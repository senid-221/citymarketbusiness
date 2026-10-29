import products from "@/data/products.json";

export const categories = [
  { name: "Fruits", descriptor: "A little sunshine", color: "category-peach", symbol: "F" },
  { name: "Veggies", descriptor: "Picked with care", color: "category-green", symbol: "V" },
  { name: "Meats", descriptor: "Good cuts, close by", color: "category-rose", symbol: "M" },
  { name: "Seafood", descriptor: "From the water", color: "category-blue", symbol: "S" },
  { name: "Dairy & Eggs", descriptor: "The everyday good", color: "category-cream", symbol: "D" },
  { name: "Bakery", descriptor: "Warm from the oven", color: "category-wheat", symbol: "B" },
  { name: "Pantry", descriptor: "Stock up simply", color: "category-lilac", symbol: "P" },
  { name: "Beverages", descriptor: "Sip something fresh", color: "category-citrus", symbol: "B" },
  { name: "Snacks", descriptor: "A little something", color: "category-sand", symbol: "S" },
];

export function formatPrice(value: number) {
  return new Intl.NumberFormat("en-US", { style: "currency", currency: "USD" }).format(value);
}

export const catalog = products;
