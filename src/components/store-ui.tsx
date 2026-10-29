"use client";

import Link from "next/link";
import Image from "next/image";
import { FormEvent, useState } from "react";
import { usePathname, useRouter } from "next/navigation";
import { useCart, type Product } from "@/components/cart-provider";
import { categories, formatPrice } from "@/data/store";

export function Header() {
  const cart = useCart();
  const pathname = usePathname();
  const router = useRouter();
  const [location, setLocation] = useState("Senegal, City Island");
  const [locationOpen, setLocationOpen] = useState(false);
  const [query, setQuery] = useState("");

  function search(event: FormEvent<HTMLFormElement>) {
    event.preventDefault();
    router.push(`/category/?q=${encodeURIComponent(query.trim())}`);
  }

  return (
    <>
      <div className="topline">
        <span>Good things, grown close.</span>
        <span className="topline-note">Fresh picks, right around the corner</span>
      </div>
      <header className="site-header">
        <div className="header-main container">
          <Link className="brand" href="/" aria-label="CityMarket Business home">
            <Image src="/assets/images/app_launcher_icon.png" alt="" width={42} height={42} />
            <span>citymarket<span className="brand-business">business</span></span>
          </Link>
          <button
            className="location-button"
            type="button"
            aria-expanded={locationOpen}
            onClick={() => setLocationOpen((open) => !open)}
          >
            <span className="location-pin" aria-hidden="true">⌖</span>
            <span className="location-copy"><small>Deliver to</small><strong>{location}</strong></span>
            <span aria-hidden="true">⌄</span>
          </button>
          <form className="search-form" role="search" onSubmit={search}>
            <label className="sr-only" htmlFor="market-search">Search for groceries</label>
            <span aria-hidden="true" className="search-symbol">⌕</span>
            <input id="market-search" value={query} onChange={(event) => setQuery(event.target.value)} placeholder="Search for Vegetables....." />
            <button type="submit">Search</button>
          </form>
          <nav className="header-actions" aria-label="Account navigation">
            <Link className={`icon-link ${pathname === "/profile/" ? "is-current" : ""}`} href="/profile/" aria-label="Your profile"><span aria-hidden="true">♙</span><small>Account</small></Link>
            <Link className="icon-link cart-link" href="/cart/" aria-label={`Cart, ${cart.count} items`}><span aria-hidden="true">♧</span><small>Cart</small>{cart.count > 0 && <b className="cart-count">{cart.count}</b>}</Link>
          </nav>
          {locationOpen && (
            <div className="location-popover">
              <strong>Choose your delivery area</strong>
              <p>We use this to show local availability.</p>
              <label htmlFor="delivery-area">Neighborhood or city</label>
              <input id="delivery-area" value={location} onChange={(event) => setLocation(event.target.value)} />
              <button className="button button-small" type="button" onClick={() => setLocationOpen(false)}>Save location</button>
            </div>
          )}
        </div>
        <div className="nav-row">
          <nav className="container category-nav" aria-label="Main navigation">
            <Link href="/category/" className="nav-all">☰ <span>Shop all</span></Link>
            {categories.slice(0, 6).map((category) => <Link key={category.name} href={`/category/?category=${encodeURIComponent(category.name)}`}>{category.name}</Link>)}
            <Link href="/ai-planner/">AI meal planner</Link>
            <Link href="/orders/">My orders</Link>
          </nav>
        </div>
      </header>
    </>
  );
}

export function Footer() {
  return (
    <footer className="site-footer">
      <div className="container footer-grid">
        <div><Link className="brand footer-brand" href="/"><Image src="/assets/images/app_launcher_icon.png" alt="" width={34} height={34} /><span>citymarket<span className="brand-business">business</span></span></Link><p>Your neighborhood, a little fresher.</p></div>
        <div><strong>Shop</strong><Link href="/category/">All groceries</Link><Link href="/category/?category=Fruits">Fresh fruit</Link><Link href="/category/?category=Veggies">Vegetables</Link><Link href="/ai-planner/">AI meal planner</Link></div>
        <div><strong>Your account</strong><Link href="/orders/">Order history</Link><Link href="/profile/">Profile & settings</Link><Link href="/sign-in/">Sign in</Link></div>
        <div><strong>Need a hand?</strong><Link href="/help/">Help center</Link><span>Delivery & checkout are demo flows.</span></div>
      </div>
      <div className="container footer-bottom"><span>© {new Date().getFullYear()} CityMarket Business</span><span>Made for the neighborhood.</span></div>
    </footer>
  );
}

export function PageFrame({ children }: { children: React.ReactNode }) {
  return <><Header />{children}<MobileNav /><Footer /></>;
}

function MobileNav() {
  return <nav className="mobile-bottom-nav" aria-label="Quick navigation"><Link href="/"><span aria-hidden="true">⌂</span>Home</Link><Link href="/category/"><span aria-hidden="true">☷</span>Shop</Link><Link href="/ai-planner/"><span aria-hidden="true">✦</span>Plan</Link><Link href="/orders/"><span aria-hidden="true">▤</span>Orders</Link><Link href="/profile/"><span aria-hidden="true">♙</span>Profile</Link></nav>;
}

export function SectionHeading({ eyebrow, title, action }: { eyebrow?: string; title: string; action?: React.ReactNode }) {
  return <div className="section-heading"><div>{eyebrow && <span className="eyebrow">{eyebrow}</span>}<h2>{title}</h2></div>{action}</div>;
}

export function ProductArt({ product, large = false }: { product: Product; large?: boolean }) {
  const palette: Record<string, string> = {
    Fruits: "art-peach",
    Veggies: "art-green",
    Meats: "art-rose",
    Seafood: "art-blue",
    Bakery: "art-wheat",
    "Dairy & Eggs": "art-cream",
    Beverages: "art-citrus",
    Pantry: "art-lilac",
  };
  const initials = product.name.split(" ").slice(0, 2).map((part) => part[0]).join("");
  return <div className={`product-art ${palette[product.category] ?? "art-green"} ${large ? "product-art-large" : ""}`} aria-label={`${product.name} product image placeholder`} role="img"><span className="art-orbit" /><span className="art-initials">{initials}</span><small>{product.category}</small></div>;
}

export function ProductCard({ product, onOpen }: { product: Product; onOpen?: () => void }) {
  const cart = useCart();
  const router = useRouter();
  return (
    <article className="product-card">
      <button className="product-open" type="button" onClick={() => onOpen ? onOpen() : router.push(`/product/?name=${encodeURIComponent(product.name)}`)} aria-label={`View ${product.name} details`}><ProductArt product={product} /><span className="fresh-tag">Fresh pick</span></button>
      <div className="product-copy"><p className="product-category">{product.category}</p><h3><button type="button" onClick={() => onOpen ? onOpen() : router.push(`/product/?name=${encodeURIComponent(product.name)}`)}>{product.name}</button></h3><p className="product-quantity">{product.quantity}</p><div className="product-buy"><strong>{product.price}</strong><button className="add-button" type="button" onClick={() => cart.add(product)} aria-label={`Add ${product.name} to cart`}>+</button></div></div>
    </article>
  );
}

export function EmptyState({ title, message, action = "Browse the market", href = "/category/" }: { title: string; message: string; action?: string; href?: string }) {
  return <div className="empty-state"><span className="empty-basket" aria-hidden="true">▱</span><h2>{title}</h2><p>{message}</p><Link className="button" href={href}>{action}</Link></div>;
}

export function Price({ value }: { value: number }) {
  return <>{formatPrice(value)}</>;
}
