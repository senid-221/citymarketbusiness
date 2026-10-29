import test from "node:test";
import assert from "node:assert/strict";
import {
  createPrompt,
  normalizePlannerRequest,
  parseGeneratedPlan,
} from "./planner.js";

const catalog = [
  {
    id: "product-1",
    name: "Fresh apple",
    category: "Fruits",
    quantity: "1 kg",
    price: "$4.99",
    unitPrice: 4.99,
    product: {
      name: "Fresh apple",
      category: "Fruits",
      quantity: "1 kg",
      price: "$4.99",
    },
  },
];

const preferences = {
  goal: "Quick lunches",
  servings: 2,
  mealCount: 1,
  budget: 10,
  dietaryRequirements: "",
  excludedIngredients: [],
};

test("normalizes valid meal-planning input", () => {
  assert.deepEqual(
    normalizePlannerRequest({
      goal: "  Quick lunches ",
      servings: "2",
      mealCount: "1",
      budget: "10",
      excludedIngredients: ["  peanuts "],
    }),
    { ...preferences, goal: "Quick lunches", excludedIngredients: ["peanuts"] },
  );
});

test("rejects out-of-range preferences", () => {
  assert.throws(
    () => normalizePlannerRequest({ ...preferences, servings: 0 }),
    /1 and 12 servings/,
  );
});

test("includes only the server catalog in the model prompt", () => {
  const prompt = createPrompt(preferences, catalog);
  assert.match(prompt, /product-1/);
  assert.match(prompt, /Do not invent catalog items/);
});

test("returns prices calculated from the server catalog", () => {
  const generated = {
    title: "Apple lunch",
    summary: "A simple meal.",
    meals: [
      {
        name: "Apple salad",
        day: 1,
        ingredients: [{ productId: "product-1", amount: "1 cup, sliced" }],
        steps: ["Slice and serve."],
      },
    ],
    shoppingList: [{ productId: "product-1", units: 1 }],
  };

  const plan = parseGeneratedPlan(JSON.stringify(generated), preferences, catalog);
  assert.equal(plan.estimatedSubtotal, 4.99);
  assert.equal(plan.shoppingList[0].price, "$4.99");
});

test("rejects invented products and plans over budget", () => {
  const generated = {
    title: "Invalid",
    summary: "Invalid",
    meals: [
      {
        name: "Mystery meal",
        day: 1,
        ingredients: [{ productId: "invented-product", amount: "some" }],
        steps: ["Cook."],
      },
    ],
    shoppingList: [{ productId: "product-1", units: 3 }],
  };

  assert.throws(
    () => parseGeneratedPlan(JSON.stringify(generated), preferences, catalog),
    /unavailable catalog item/,
  );
  generated.meals[0].ingredients[0].productId = "product-1";
  assert.throws(
    () => parseGeneratedPlan(JSON.stringify(generated), { ...preferences, budget: 5 }, catalog),
    /exceeded your budget/,
  );
});
