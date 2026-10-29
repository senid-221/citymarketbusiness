import { initializeApp } from "firebase-admin/app";
import { getAuth } from "firebase-admin/auth";
import { getFirestore } from "firebase-admin/firestore";
import { defineSecret } from "firebase-functions/params";
import { onRequest } from "firebase-functions/v2/https";
import products from "./data/products.json" with { type: "json" };
import {
  createPrompt,
  normalizePlannerRequest,
  parseGeneratedPlan,
} from "./planner.js";

initializeApp();

const geminiApiKey = defineSecret("GEMINI_API_KEY");
const catalog = products.map((product, index) => ({
  id: `product-${index + 1}`,
  product,
  name: product.name,
  category: product.category,
  quantity: product.quantity,
  price: product.price,
  unitPrice: Number(product.price.replace("$", "")),
}));

async function consumeDailyRequest(uid) {
  const date = new Date().toISOString().slice(0, 10);
  const ref = getFirestore()
    .collection("aiPlannerUsage")
    .doc(`${uid}_${date}`);
  return getFirestore().runTransaction(async (transaction) => {
    const snapshot = await transaction.get(ref);
    const count = snapshot.exists ? snapshot.get("count") : 0;
    if (count >= 5) return false;
    transaction.set(ref, {
      count: count + 1,
      updatedAt: new Date().toISOString(),
    });
    return true;
  });
}

export const generateGroceryPlan = onRequest(
  {
    region: "us-central1",
    cors: true,
    secrets: [geminiApiKey],
    timeoutSeconds: 60,
    maxInstances: 5,
  },
  async (req, res) => {
    if (req.method !== "POST") {
      res.set("Allow", "POST").status(405).json({ error: "Use POST to request a plan." });
      return;
    }

    try {
      const authorization = req.get("authorization") || "";
      const match = authorization.match(/^Bearer (.+)$/i);
      if (!match) {
        res.status(401).json({ error: "Sign in to use the AI grocery planner." });
        return;
      }

      const decodedToken = await getAuth().verifyIdToken(match[1]);
      const preferences = normalizePlannerRequest(req.body);
      if (!(await consumeDailyRequest(decodedToken.uid))) {
        res.status(429).json({ error: "You’ve reached today’s limit of five meal plans." });
        return;
      }

      const apiResponse = await fetch(
        "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent",
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
            "x-goog-api-key": geminiApiKey.value(),
          },
          body: JSON.stringify({
            systemInstruction: {
              parts: [
                {
                  text: "You are CityMarket's grocery meal planner. Follow the user's preferences and the catalog constraints, and return only the requested JSON.",
                },
              ],
            },
            contents: [
              { role: "user", parts: [{ text: createPrompt(preferences, catalog) }] },
            ],
            generationConfig: {
              temperature: 0.3,
              maxOutputTokens: 4096,
              responseMimeType: "application/json",
              responseSchema: {
                type: "OBJECT",
                properties: {
                  title: { type: "STRING" },
                  summary: { type: "STRING" },
                  meals: {
                    type: "ARRAY",
                    items: {
                      type: "OBJECT",
                      properties: {
                        name: { type: "STRING" },
                        day: { type: "INTEGER" },
                        ingredients: {
                          type: "ARRAY",
                          items: {
                            type: "OBJECT",
                            properties: {
                              productId: { type: "STRING" },
                              amount: { type: "STRING" },
                            },
                            required: ["productId", "amount"],
                          },
                        },
                        steps: { type: "ARRAY", items: { type: "STRING" } },
                      },
                      required: ["name", "day", "ingredients", "steps"],
                    },
                  },
                  shoppingList: {
                    type: "ARRAY",
                    items: {
                      type: "OBJECT",
                      properties: {
                        productId: { type: "STRING" },
                        units: { type: "INTEGER" },
                      },
                      required: ["productId", "units"],
                    },
                  },
                },
                required: ["title", "summary", "meals", "shoppingList"],
              },
            },
          }),
          signal: AbortSignal.timeout(45_000),
        },
      );

      if (!apiResponse.ok) {
        console.error("Gemini request failed", {
          status: apiResponse.status,
          uid: decodedToken.uid,
        });
        res.status(apiResponse.status === 429 ? 503 : 502).json({
          error:
            apiResponse.status === 429
              ? "The AI planner is busy. Please try again in a moment."
              : "The AI planner could not generate a plan right now. Please try again.",
        });
        return;
      }

      const responseBody = await apiResponse.json();
      const text = responseBody.candidates?.[0]?.content?.parts
        ?.map((part) => part.text || "")
        .join("");
      if (!text) {
        console.error("Gemini returned no plan text", { uid: decodedToken.uid });
        res.status(502).json({ error: "The AI planner returned no plan. Please try again." });
        return;
      }

      const plan = parseGeneratedPlan(text, preferences, catalog);
      res.set("Cache-Control", "no-store").status(200).json({ plan });
    } catch (error) {
      if (error?.name === "TimeoutError" || error?.name === "AbortError") {
        res.status(504).json({ error: "The AI planner took too long. Please try again." });
        return;
      }
      if (
        error?.message?.startsWith("Provide ") ||
        error?.message?.startsWith("Choose ") ||
        error?.message?.startsWith("Describe ") ||
        error?.message?.startsWith("Set ") ||
        error?.message?.startsWith("Dietary ") ||
        error?.message?.startsWith("List ") ||
        error?.message?.startsWith("The plan exceeded")
      ) {
        res.status(400).json({ error: error.message });
        return;
      }
      if (error?.message?.startsWith("The meal planner ")) {
        console.error("Gemini returned an invalid plan", { message: error.message });
        res.status(502).json({ error: "The AI planner returned an invalid plan. Please try again." });
        return;
      }
      if (
        error?.code === "auth/argument-error" ||
        error?.code === "auth/id-token-expired" ||
        error?.code === "auth/id-token-revoked" ||
        error?.code === "auth/invalid-id-token" ||
        error?.code === "auth/invalid-user-token" ||
        error?.code === "auth/user-disabled"
      ) {
        res.status(401).json({ error: "Your sign-in has expired. Sign in again to continue." });
        return;
      }
      console.error("Grocery plan generation failed", error);
      res.status(500).json({ error: "We couldn’t complete the meal plan. Please try again later." });
    }
  },
);
