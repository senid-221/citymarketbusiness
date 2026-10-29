"use client";

import Link from "next/link";
import { onAuthStateChanged, type User } from "firebase/auth";
import { FormEvent, useEffect, useState } from "react";
import { useCart } from "@/components/cart-provider";
import { auth } from "@/lib/firebase";
import { catalog, formatPrice } from "@/data/store";

type Plan = {
  title: string;
  summary: string;
  meals: {
    name: string;
    day: number;
    ingredients: { productId: string; name: string; amount: string }[];
    steps: string[];
  }[];
  shoppingList: {
    productId: string;
    name: string;
    category: string;
    quantity: string;
    price: string;
    units: number;
  }[];
  estimatedSubtotal: number;
};

type PlanResponse = { plan?: Plan; error?: string };

const plannerUrl = process.env.NEXT_PUBLIC_AI_PLANNER_URL;

export function AiPlanner() {
  const cart = useCart();
  const [user, setUser] = useState<User | null>(null);
  const [authReady, setAuthReady] = useState(false);
  const [goal, setGoal] = useState("Quick, balanced everyday meals");
  const [servings, setServings] = useState("2");
  const [mealCount, setMealCount] = useState("3");
  const [budget, setBudget] = useState("40");
  const [dietaryRequirements, setDietaryRequirements] = useState("");
  const [excludedIngredients, setExcludedIngredients] = useState("");
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");
  const [plan, setPlan] = useState<Plan | null>(null);
  const [cartMessage, setCartMessage] = useState("");

  useEffect(
    () =>
      onAuthStateChanged(auth, (nextUser) => {
        setUser(nextUser);
        setAuthReady(true);
      }),
    [],
  );

  async function generatePlan(event: FormEvent<HTMLFormElement>) {
    event.preventDefault();
    setError("");
    setPlan(null);
    setCartMessage("");

    const currentUser = user;
    if (!currentUser) {
      setError("Sign in to use the AI grocery planner.");
      return;
    }
    if (!plannerUrl) {
      setError("The AI planner endpoint is not configured for this website.");
      return;
    }

    setLoading(true);
    try {
      const token = await currentUser.getIdToken();
      const response = await fetch(plannerUrl, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify({
          goal,
          servings: Number(servings),
          mealCount: Number(mealCount),
          budget: Number(budget),
          dietaryRequirements,
          excludedIngredients: excludedIngredients
            .split(",")
            .map((item) => item.trim())
            .filter(Boolean),
        }),
      });
      const result = (await response.json()) as PlanResponse;
      if (!response.ok || !result.plan) {
        throw new Error(result.error || "We couldn’t generate a plan. Please try again.");
      }
      setPlan(result.plan);
    } catch (requestError) {
      setError(
        requestError instanceof Error
          ? requestError.message
          : "We couldn’t generate a plan. Please try again.",
      );
    } finally {
      setLoading(false);
    }
  }

  function addShoppingListToCart() {
    if (!plan) return;
    const productsToAdd = plan.shoppingList.map((line) => ({
      line,
      product: catalog.find(
        (item, index) =>
          `product-${index + 1}` === line.productId &&
          item.name === line.name &&
          item.category === line.category &&
          item.quantity === line.quantity &&
          item.price === line.price,
      ),
    }));
    if (productsToAdd.some(({ product }) => !product)) {
      setCartMessage("A catalog item changed. Refresh the plan before adding it.");
      return;
    }
    for (const { line, product } of productsToAdd) {
      if (!product) continue;
      for (let unit = 0; unit < line.units; unit += 1) cart.add(product);
    }
    setCartMessage("The shopping list was added to your basket.");
  }

  if (!authReady) {
    return <div className="loading-state">Checking your sign-in…</div>;
  }

  if (!user) {
    return (
      <section className="planner-sign-in">
        <h2>Sign in to make a plan</h2>
        <p>Your account keeps the AI planner available to real customers and helps limit abuse.</p>
        <Link className="button" href="/sign-in/">Sign in or create an account →</Link>
      </section>
    );
  }

  return (
    <div className="planner-layout">
      <form className="planner-form" onSubmit={generatePlan}>
        <h2>Your meal preferences</h2>
        <div className="form-field">
          <label htmlFor="planner-goal">What kind of meals?</label>
          <input
            id="planner-goal"
            value={goal}
            maxLength={200}
            onChange={(event) => setGoal(event.target.value)}
            required
          />
        </div>
        <div className="planner-form-grid">
          <div className="form-field">
            <label htmlFor="planner-servings">Servings per meal</label>
            <select id="planner-servings" value={servings} onChange={(event) => setServings(event.target.value)}>
              {[1, 2, 3, 4, 5, 6, 8, 10, 12].map((amount) => <option key={amount}>{amount}</option>)}
            </select>
          </div>
          <div className="form-field">
            <label htmlFor="planner-meals">Number of meals</label>
            <select id="planner-meals" value={mealCount} onChange={(event) => setMealCount(event.target.value)}>
              {[1, 2, 3, 4, 5, 6, 7].map((amount) => <option key={amount}>{amount}</option>)}
            </select>
          </div>
          <div className="form-field">
            <label htmlFor="planner-budget">Budget (USD)</label>
            <input id="planner-budget" type="number" min="1" max="2000" step="1" value={budget} onChange={(event) => setBudget(event.target.value)} required />
          </div>
        </div>
        <div className="form-field">
          <label htmlFor="planner-dietary">Dietary preferences (optional)</label>
          <input
            id="planner-dietary"
            value={dietaryRequirements}
            maxLength={200}
            onChange={(event) => setDietaryRequirements(event.target.value)}
            placeholder="For example, vegetarian"
          />
        </div>
        <div className="form-field">
          <label htmlFor="planner-exclusions">Ingredients to avoid (comma separated)</label>
          <input
            id="planner-exclusions"
            value={excludedIngredients}
            onChange={(event) => setExcludedIngredients(event.target.value)}
            placeholder="For example, peanuts, mushrooms"
          />
        </div>
        {error && <p className="form-error" role="alert">{error}</p>}
        <button className="button" type="submit" disabled={loading}>
          {loading ? "Planning your meals…" : "Create my meal plan ✨"}
        </button>
        <p className="planner-limit">Up to five plans per account each day. Product prices use the current catalog.</p>
      </form>

      <div className="planner-results" aria-live="polite">
        {loading && <div className="loading-state">Finding ideas in the market…</div>}
        {!loading && !plan && (
          <div className="planner-empty">
            <span aria-hidden="true">🥦</span>
            <h2>A good plan starts with you.</h2>
            <p>Share your preferences to get recipes and a basket list built from our actual products.</p>
          </div>
        )}
        {plan && (
          <section className="planner-plan">
            <span className="eyebrow">Your AI-generated plan</span>
            <h2>{plan.title}</h2>
            <p className="planner-summary">{plan.summary}</p>
            <div className="planner-meals">
              {plan.meals.map((meal) => (
                <article className="planner-meal" key={`${meal.day}-${meal.name}`}>
                  <span className="eyebrow">Meal {meal.day}</span>
                  <h3>{meal.name}</h3>
                  <p><strong>Ingredients:</strong> {meal.ingredients.map((item) => `${item.amount} ${item.name}`).join(" · ")}</p>
                  <ol>{meal.steps.map((step, index) => <li key={`${index}-${step}`}>{step}</li>)}</ol>
                </article>
              ))}
            </div>
            <div className="planner-shopping">
              <h3>Shopping list</h3>
              {plan.shoppingList.map((line) => (
                <div className="planner-shopping-line" key={line.productId}>
                  <span>{line.units} × {line.name} <small>{line.quantity}</small></span>
                  <strong>{formatPrice(Number(line.price.slice(1)) * line.units)}</strong>
                </div>
              ))}
              <div className="planner-total"><strong>Estimated catalog total</strong><strong>{formatPrice(plan.estimatedSubtotal)}</strong></div>
              <button className="button" type="button" onClick={addShoppingListToCart}>Add shopping list to basket</button>
              {cartMessage && <p className="form-success" role="status">{cartMessage} <Link href="/cart/">View basket</Link></p>}
            </div>
            <p className="planner-disclaimer">AI suggestions can be inaccurate. Check ingredients and labels yourself; this is not medical or dietary advice. Catalog prices and stock may change.</p>
          </section>
        )}
      </div>
    </div>
  );
}
