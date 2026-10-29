import { Suspense } from "react";
import { PageFrame } from "@/components/store-ui";
import { ProductDetails } from "@/components/product-details";

export default function ProductPage() {
  return <PageFrame><main className="page-main container"><Suspense fallback={<div className="loading-state">Loading product details…</div>}><ProductDetails /></Suspense></main></PageFrame>;
}
