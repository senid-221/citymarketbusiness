"use client";

import Link from "next/link";
import { useSearchParams, useRouter } from "next/navigation";
import { useState } from "react";
import { useCart } from "@/components/cart-provider";
import { ProductArt } from "@/components/store-ui";
import { catalog } from "@/data/store";

export function ProductDetails() {
  const params = useSearchParams();
  const router = useRouter();
  const cart = useCart();
  const product = catalog.find((item) => item.name === params.get("name")) ?? catalog[0];
  const [added, setAdded] = useState(false);

  return <><p className="page-intro"><Link className="text-link" href="/category/">Market</Link> / {product.category} / {product.name}</p><div className="product-layout"><ProductArt product={product} large /><div className="product-details"><span className="eyebrow">{product.category} · Fresh pick</span><h1>{product.name}</h1><p className="product-quantity">{product.quantity}</p><p className="detail-price">{product.price}</p><p className="detail-description">A thoughtful pick from the CityMarket neighborhood catalog. Make it part of your next everyday meal.</p><div className="quantity-detail"><span>Pack size</span><strong>{product.quantity}</strong></div><div className="detail-actions"><button className="button" onClick={() => { cart.add(product); setAdded(true); }} type="button">Add to basket · {product.price}</button><button className="button button-outline" onClick={() => router.push("/cart/")} type="button">Go to cart</button></div>{added && <p className="form-success" role="status">Added to your basket.</p>}<p className="notice">Product photos aren’t included in the local Flutter asset bundle, so this page uses a labeled color placeholder instead of remote imagery.</p></div></div></>;
}
