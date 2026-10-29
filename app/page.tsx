import Link from "next/link";
import Image from "next/image";
import { PageFrame, ProductCard, SectionHeading } from "@/components/store-ui";
import { catalog, categories, getProductKey } from "@/data/store";

export default function HomePage() {
  const featured = catalog.slice(0, 8);

  return (
    <PageFrame>
      <main>
        <section className="hero container">
          <div className="hero-copy">
            <span className="eyebrow">Good food lives nearby</span>
            <h1>A fresher kind of <em>everyday.</em></h1>
            <p>Meet the good things your neighborhood has to offer. Thoughtful picks, familiar favorites, and a little more fresh in every basket.</p>
            <div className="hero-buttons">
              <Link className="button" href="/category/">Explore the market <span aria-hidden="true">→</span></Link>
              <span className="hero-note"><span aria-hidden="true">✳</span> Locally loved, every day</span>
            </div>
          </div>
          <div className="hero-stage" role="img" aria-label="Fresh neighborhood produce including broccoli and bananas">
            <div className="hero-halo" />
            <div className="produce-platter">
              <span className="produce-emoji produce-broccoli" aria-hidden="true">🥦</span>
              <span className="produce-emoji produce-banana" aria-hidden="true">🍌</span>
              <span className="produce-leaf produce-leaf-one" aria-hidden="true" />
              <span className="produce-leaf produce-leaf-two" aria-hidden="true" />
              <span className="produce-label">Fresh from the market <span>Picked today</span></span>
            </div>
            <div className="hero-stamp"><span>Fresh<br />around<br />the corner<small>CityMarket</small></span></div>
            <div className="hero-logo" aria-hidden="true"><Image src="/assets/images/app_launcher_icon.png" alt="" width={86} height={86} /></div>
          </div>
        </section>

        <section className="benefits container" aria-label="Market highlights">
          <div className="benefit"><span className="benefit-icon" aria-hidden="true">✳</span><div><strong>Fresh today</strong><small>Little details make a better basket.</small></div></div>
          <div className="benefit"><span className="benefit-icon" aria-hidden="true">⌖</span><div><strong>Close to home</strong><small>Shop your neighborhood, wherever you are.</small></div></div>
          <div className="benefit"><span className="benefit-icon" aria-hidden="true">♡</span><div><strong>Made for real life</strong><small>Everyday favorites, easy to find.</small></div></div>
        </section>

        <section className="section container">
          <SectionHeading eyebrow="Aisles worth wandering" title="Shop by category" action={<Link className="text-link" href="/category/">See all categories →</Link>} />
          <div className="category-grid">
            {categories.slice(0, 6).map((category) => <Link className={`category-tile ${category.color}`} key={category.name} href={`/category/?category=${encodeURIComponent(category.name)}`}><strong>{category.name}</strong><small>{category.descriptor}</small><span className="category-letter" aria-hidden="true">{category.symbol}</span></Link>)}
          </div>
        </section>

        <section className="section container">
          <SectionHeading eyebrow="Picked for your table" title="Fresh today" action={<Link className="text-link" href="/category/">See all →</Link>} />
          <div className="product-grid">
            {featured.map((product) => <ProductCard key={getProductKey(product)} product={product} />)}
          </div>
        </section>

        <section className="promo-strip container">
          <div><span className="eyebrow">A little more good</span><h2>Make room for a new favorite.</h2><p>Browse the neighborhood picks and bring home something wonderful.</p></div>
          <Link className="promo-aside" href="/ai-planner/">Plan meals with AI<br />from our real catalog <span aria-hidden="true">↗</span></Link>
        </section>
      </main>
    </PageFrame>
  );
}
