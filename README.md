# CityMarket Business

The repository retains the original Flutter app in `lib/`, `android/`, `ios/`,
`assets/`, and `web/`. The primary website is a Next.js App Router application.
Local Flutter assets are copied—not moved—into `public/assets/` and `public/web/`
so the originals remain intact.

## Run and build the website

Use Node.js 20+ and npm:

```powershell
npm ci
npm run dev
npm run lint
npm run typecheck
npm run build
```

`npm run build` creates a static, deployable website in `out/`. Preview the static
files with any static web server. The exported site does not require a Node server
at runtime.

## Firebase Authentication

The sign-in, account creation, and password reset forms use the existing Firebase
web app configuration from `lib/firebase_options.dart`. Firebase web configuration
is public client configuration, not a server-side secret. It can be overridden with
the `NEXT_PUBLIC_FIREBASE_*` variables listed in `.env.example`.

Enable **Email/Password** in Firebase Console under **Authentication → Sign-in
method**, and add the production hostname to **Authentication → Settings →
Authorized domains**. Google, Facebook, and Apple sign-in are not wired up; they
require provider setup and OAuth credentials in Firebase Console. Firebase Auth
does not provide product inventory, customer profiles, order storage, or payments.

## Hostinger deployment

The GitHub Actions workflow builds the static site on pushes to `main` and uploads
`out/` to the configured Hostinger document root. It does not deploy unless all of
these Actions repository secrets are present:

- `HOSTINGER_SSH_HOST`
- `HOSTINGER_SSH_PORT`
- `HOSTINGER_SSH_USERNAME`
- `HOSTINGER_SSH_PRIVATE_KEY`
- `HOSTINGER_SSH_KNOWN_HOSTS`
- `HOSTINGER_DEPLOY_PATH` (absolute path ending in `/public_html`)

Without those secrets the workflow still builds and verifies the deployable output,
then emits a setup warning and skips SSH deployment. Deployment is not run from this
workspace.

## Scope and known limitations

The website implements the storefront, category/search filters, product details,
browser-persisted cart, demo checkout/confirmation, sign-in/up/reset, profile,
notifications, and help pages. Product names, categories, pack sizes, and prices
come from the Flutter app's local `FFAppState` catalog. That source has no local
product photographs; the website uses labeled color placeholders rather than
hotlinked images. The original source references some FlutterFlow-hosted product
images, which are not pulled into the web bundle.

Cart contents persist in this browser. Checkout is only a local preview: it does not
send or store orders and does not process payments. Order tracking, delivery maps,
delivery chat/calls, ratings, saved addresses/payment methods, support tickets,
AI grocery-planner features, and the remaining Flutter-only screens are not
connected or ported to web. These depend on app-specific services and/or native
Flutter workflows. Original mobile sources/assets are retained, and the native app
identifier is now `com.citymarketbusiness.app`.
