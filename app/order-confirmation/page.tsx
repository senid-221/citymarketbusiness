"use client";

import Link from "next/link";
import { PageFrame } from "@/components/store-ui";

export default function OrderConfirmationPage() {
  return <PageFrame><main className="page-main container"><section className="confirmation"><span className="confirmation-mark" aria-hidden="true">✓</span><span className="eyebrow">Demo checkout</span><h1>That was a preview.</h1><p>Your details stayed in this browser session. No order was placed, no payment was taken, and nothing was sent to a server.</p><div className="notice">To accept real orders, connect a trusted catalog/order backend and a server-side payment provider first.</div><Link className="button" href="/category/">Back to the market</Link></section></main></PageFrame>;
}
