"use client";

import { useEffect, useMemo, useState } from "react";
import { useSearchParams } from "next/navigation";
import { catalog, categories } from "@/data/store";
import { ProductCard, SectionHeading } from "@/components/store-ui";

export function CategoryCatalog() {
  const searchParams = useSearchParams();
  const [selected, setSelected] = useState(searchParams.get("category") ?? "All");
  const [sort, setSort] = useState("Featured");
  const query = searchParams.get("q")?.trim().toLowerCase() ?? "";
  useEffect(() => {
    setSelected(searchParams.get("category") ?? "All");
  }, [searchParams]);
  const visible = useMemo(() => {
    const filtered = catalog.filter((product) =>
      (selected === "All" || product.category === selected) &&
      (!query || `${product.name} ${product.category}`.toLowerCase().includes(query)),
    );
    if (sort === "Price: low to high") filtered.sort((a, b) => Number(a.price.slice(1)) - Number(b.price.slice(1)));
    if (sort === "Name: A to Z") filtered.sort((a, b) => a.name.localeCompare(b.name));
    return filtered;
  }, [selected, sort, query]);

  return <>
    <div className="page-intro"><span className="eyebrow">Find something good</span><h1 className="page-title">{query ? `Search results for “${searchParams.get("q")}”` : selected === "All" ? "The neighborhood market" : selected}</h1><p>Good things for the everyday table. All prices and products are from the original CityMarket app catalog.</p></div>
    <SectionHeading title="Browse the shelves" />
    <div className="catalog-tools">
      <div className="filter-list" aria-label="Filter by category"><button className={`filter-pill ${selected === "All" ? "active" : ""}`} onClick={() => setSelected("All")} type="button">All items</button>{categories.map((category) => <button key={category.name} className={`filter-pill ${selected === category.name ? "active" : ""}`} onClick={() => setSelected(category.name)} type="button">{category.name}</button>)}</div>
      <label className="result-count">Sort by <select aria-label="Sort products" value={sort} onChange={(event) => setSort(event.target.value)}><option>Featured</option><option>Price: low to high</option><option>Name: A to Z</option></select></label>
    </div>
    <div className="product-grid">{visible.map((product) => <ProductCard key={product.name} product={product} />)}</div>
    {visible.length === 0 && <div className="empty-state"><h2>No matches just yet</h2><p>Try a different search or browse another aisle.</p><button className="button" onClick={() => { setSelected("All"); window.location.href = "/category/"; }}>Clear search</button></div>}
  </>;
}
