import type { Metadata } from "next";
import "./globals.css";
import { CartProvider } from "@/components/cart-provider";

export const metadata: Metadata = {
  title: "CityMarket Business | Fresh groceries, close to home",
  description:
    "A neighborhood market for fresh groceries, thoughtful finds, and everyday essentials.",
  applicationName: "CityMarket Business",
  icons: {
    icon: "/assets/images/favicon.png",
    apple: "/web/icons/app_launcher_icon.png",
  },
  manifest: "/web/manifest.json",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body>
        <CartProvider>{children}</CartProvider>
      </body>
    </html>
  );
}
