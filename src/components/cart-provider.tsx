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

export type Product = (typeof products)[number];
export type CartLine = { product: Product; quantity: number };

type CartContextValue = {
  items: CartLine[];
  count: number;
  subtotal: number;
  add: (product: Product) => void;
  setQuantity: (name: string, quantity: number) => void;
  remove: (name: string) => void;
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
      const existing = current.find((line) => line.product.name === product.name);
      return existing
        ? current.map((line) =>
            line.product.name === product.name
              ? { ...line, quantity: line.quantity + 1 }
              : line,
          )
        : [...current, { product, quantity: 1 }];
    });
  }, []);

  const setQuantity = useCallback((name: string, quantity: number) => {
    setItems((current) =>
      quantity < 1
        ? current.filter((line) => line.product.name !== name)
        : current.map((line) =>
            line.product.name === name ? { ...line, quantity } : line,
          ),
    );
  }, []);

  const remove = useCallback(
    (name: string) => setQuantity(name, 0),
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
