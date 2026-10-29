import { Suspense } from "react";
import { PageFrame } from "@/components/store-ui";
import { CategoryCatalog } from "@/components/catalog";

export default function CategoryPage() {
  return <PageFrame><main className="page-main container"><Suspense fallback={<div className="loading-state">Preparing the market…</div>}><CategoryCatalog /></Suspense></main></PageFrame>;
}
