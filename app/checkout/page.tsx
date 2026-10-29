"use client";

import { FormEvent, useState } from "react";
import { useRouter } from "next/navigation";
import { PageFrame } from "@/components/store-ui";
import { useCart } from "@/components/cart-provider";
import { formatPrice } from "@/data/store";

export default function CheckoutPage() {
  const cart = useCart();
  const router = useRouter();
  const [message, setMessage] = useState("");

  function submit(event: FormEvent<HTMLFormElement>) {
    event.preventDefault();
    if (!cart.items.length) {
      setMessage("Your basket is empty. Add a few items before checkout.");
      return;
    }
    sessionStorage.setItem("citymarket-demo-checkout", JSON.stringify({ itemCount: cart.count, total: cart.subtotal }));
    router.push("/order-confirmation/");
  }

  return <PageFrame><main className="page-main container"><div className="page-intro"><span className="eyebrow">Almost there</span><h1 className="page-title">Delivery details</h1><p>This is a demo checkout. It will not submit an order or process payment.</p></div><form className="checkout-layout" onSubmit={submit}><section className="form-card"><h2>Where should we bring it?</h2><p>Enter delivery details to preview the order flow.</p><div className="form-grid"><Field label="First name" required /><Field label="Last name" required /><Field label="Email address" type="email" required /><Field label="Phone number" type="tel" required /><Field label="Delivery address" required full placeholder="Street address" /><Field label="Apartment, suite, etc." full placeholder="Optional" /><div className="form-field"><label htmlFor="delivery-day">Delivery day</label><select id="delivery-day"><option>Today · 4–6 PM</option><option>Tomorrow · 9–11 AM</option><option>Tomorrow · 2–4 PM</option></select></div><div className="form-field"><label htmlFor="delivery-note">Delivery note</label><input id="delivery-note" placeholder="Optional" /></div></div><div className="notice">No payment provider or order backend is configured. This flow stops at a demo confirmation.</div>{message && <p className="form-error" role="alert">{message}</p>}<button className="button" type="submit" style={{ marginTop: 16 }}>Preview demo checkout →</button></section><aside className="summary-card"><h2>Your basket</h2>{cart.items.length === 0 ? <p>Your basket is empty.</p> : cart.items.map(({ product, quantity }) => <div className="order-summary-line" key={product.name}><span>{quantity} × {product.name}</span><strong>{formatPrice(Number(product.price.slice(1)) * quantity)}</strong></div>)}<div className="summary-row total"><span>Estimated total</span><span>{formatPrice(cart.subtotal)}</span></div></aside></form></main></PageFrame>;
}

function Field({ label, type = "text", required = false, full = false, placeholder }: { label: string; type?: string; required?: boolean; full?: boolean; placeholder?: string }) {
  const id = label.toLowerCase().replaceAll(" ", "-");
  return <div className={`form-field ${full ? "full" : ""}`}><label htmlFor={id}>{label}{required && " *"}</label><input id={id} type={type} required={required} placeholder={placeholder} autoComplete={id} /></div>;
}
