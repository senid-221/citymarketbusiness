import Link from "next/link";
import { PageFrame, EmptyState } from "@/components/store-ui";

export default function OrdersPage() {
  return <PageFrame><main className="page-main container"><div className="page-intro"><span className="eyebrow">Your market history</span><h1 className="page-title">Orders</h1><p>Order history will be available when a trusted order service is connected.</p></div><EmptyState title="No orders to show yet." message="This web release does not submit or persist orders. Explore the catalog and try the demo checkout flow." action="Browse the market" href="/category/" /><p className="notice" style={{ marginTop: 18 }}>The original mobile app also has tracking, delivery chat, calls, ratings, and order map screens. Those need an order/delivery backend and are not connected in this web release.</p><p><Link className="text-link" href="/help/">Read about what’s available →</Link></p></main></PageFrame>;
}
