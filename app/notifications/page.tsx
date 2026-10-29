import { PageFrame } from "@/components/store-ui";

const sampleNotifications = [
  ["🛒 Cart Reminder", "There are no live reminders. This is a sample from the original app."],
  ["🥦 Fresh Arrivals", "New grocery arrivals would appear here when the catalog is connected."],
  ["💳 Payment Success", "Payment notifications are inactive; this release has no payment integration."],
  ["🔥 Hot Deal Special For You", "Deals are sample content only; no personalized promotions are active."],
  ["🎉 Exclusive Offer", "Offers will be shown here when live promotions are connected."],
];

export default function NotificationsPage() {
  return <PageFrame><main className="page-main container"><div className="page-intro"><span className="eyebrow">Keep up with the good stuff</span><h1 className="page-title">Notifications</h1><p>Sample notification titles retained from the original mobile app. No push notifications are sent.</p></div><div className="notification-list">{sampleNotifications.map(([title, detail]) => <article className="notification-item" key={title}><strong>{title}</strong><p>{detail}</p></article>)}</div></main></PageFrame>;
}
