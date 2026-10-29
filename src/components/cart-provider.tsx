"use client";

import {
  createContext,
  useCallback,
  useContext,
  useEffect,
  useMemo,
  useState,
} from "react";
import products from "@/data/products.json";
import { getProductKey } from "@/data/store";

export type Product = (typeof products)[number];
export type CartLine = { product: Product; quantity: number };

type CartContextValue = {
  items: CartLine[];
  count: number;
  subtotal: number;
  add: (product: Product) => void;
  setQuantity: (product: Product, quantity: number) => void;
  remove: (product: Product) => void;
  clear: () => void;
};

const CartContext = createContext<CartContextValue | null>(null);
const STORAGE_KEY = "citymarket-business-cart";

export function CartProvider({ children }: { children: React.ReactNode }) {
  const [items, setItems] = useState<CartLine[]>([]);
  const [ready, setReady] = useState(false);

  useEffect(() => {
    try {
      const saved = localStorage.getItem(STORAGE_KEY);
      if (saved) setItems(JSON.parse(saved) as CartLine[]);
    } catch {
      localStorage.removeItem(STORAGE_KEY);
    }
    setReady(true);
  }, []);

  useEffect(() => {
    if (ready) localStorage.setItem(STORAGE_KEY, JSON.stringify(items));
  }, [items, ready]);

  const add = useCallback((product: Product) => {
    setItems((current) => {
      const key = getProductKey(product);
      const existing = current.find((line) => getProductKey(line.product) === key);
      return existing
        ? current.map((line) =>
            getProductKey(line.product) === key
              ? { ...line, quantity: line.quantity + 1 }
              : line,
          )
        : [...current, { product, quantity: 1 }];
    });
  }, []);

  const setQuantity = useCallback((product: Product, quantity: number) => {
    const key = getProductKey(product);
    setItems((current) =>
      quantity < 1
        ? current.filter((line) => getProductKey(line.product) !== key)
        : current.map((line) =>
            getProductKey(line.product) === key ? { ...line, quantity } : line,
          ),
    );
  }, []);
  const remove = useCallback(
    (product: Product) => setQuantity(product, 0),
    [setQuantity],
  );
  const clear = useCallback(() => setItems([]), []);
  const value = useMemo(
    () => ({
      items,
      count: items.reduce((total, line) => total + line.quantity, 0),
      subtotal: items.reduce(
        (total, line) =>
          total + Number(line.product.price.replace("$", "")) * line.quantity,
        0,
      ),
      add,
      setQuantity,
      remove,
      clear,
    }),
    [items, add, setQuantity, remove, clear],
  );

  return <CartContext.Provider value={value}>{children}</CartContext.Provider>;
}

export function useCart() {
  const context = useContext(CartContext);
  if (!context) throw new Error("useCart must be used within CartProvider");
  return context;
}
