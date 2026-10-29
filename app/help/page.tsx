import Link from "next/link";
import { PageFrame } from "@/components/store-ui";

export default function HelpPage() {
  return <PageFrame><main className="page-main container"><div className="page-intro"><span className="eyebrow">Here when you need us</span><h1 className="page-title">A few helpful things.</h1><p>We’re making the essentials easy to find.</p></div><div className="help-grid"><article className="help-card"><strong>Shopping & availability</strong><p>The catalog reflects the original Flutter app’s locally configured sample products. Inventory is not connected to a live store.</p></article><article className="help-card"><strong>Checkout & payments</strong><p>Checkout is a preview only. No order data is transmitted, no order is stored, and no payment method is charged.</p></article><article className="help-card"><strong>Need account help?</strong><p>Email/password login uses the existing Firebase web project. Your profile, addresses, and support tickets need additional backend setup.</p></article></div><p style={{ marginTop: 24 }}><Link className="text-link" href="/profile/">Back to profile →</Link></p></main></PageFrame>;
}
