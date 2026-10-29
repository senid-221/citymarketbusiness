"use client";

import Link from "next/link";
import { PageFrame, ProductArt, EmptyState } from "@/components/store-ui";
import { useCart } from "@/components/cart-provider";
import { formatPrice, getProductKey } from "@/data/store";

export default function CartPage() {
  const cart = useCart();
  return <PageFrame><main className="page-main container"><div className="page-intro"><span className="eyebrow">Your market basket</span><h1 className="page-title">The good stuff.</h1><p>Review your picks and make them yours.</p></div>{cart.items.length === 0 ? <EmptyState title="Your basket is taking a breather." message="A fresh start is only a few good finds away." /> : <div className="cart-layout"><div className="cart-list">{cart.items.map(({ product, quantity }) => <article className="cart-line" key={getProductKey(product)}><ProductArt product={product} /><div className="cart-line-info"><strong>{product.name}</strong><small>{product.quantity} · {product.category}</small></div><div className="quantity-control" aria-label={`Quantity for ${product.name}`}><button type="button" aria-label={`Remove one ${product.name}`} onClick={() => cart.setQuantity(product, quantity - 1)}>−</button><span>{quantity}</span><button type="button" aria-label={`Add one ${product.name}`} onClick={() => cart.setQuantity(product, quantity + 1)}>+</button></div><div className="line-price">{formatPrice(Number(product.price.slice(1)) * quantity)}<button className="remove-button" type="button" onClick={() => cart.remove(product)}>Remove</button></div></article>)}</div><aside className="summary-card"><h2>Basket summary</h2><div className="summary-row"><span>Subtotal · {cart.count} items</span><strong>{formatPrice(cart.subtotal)}</strong></div><div className="summary-row"><span>Delivery</span><span>Calculated at checkout</span></div><div className="summary-row total"><span>Estimated total</span><span>{formatPrice(cart.subtotal)}</span></div><Link className="button" href="/checkout/">Continue to checkout →</Link><p className="summary-note">Demo checkout only. No payment is collected and no order is submitted.</p></aside></div>}</main></PageFrame>;
}
