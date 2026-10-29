# CityMarket Business

CityMarket Business is a Flutter app configured for web deployment with Firebase Hosting.

## Build and deploy the web app

Install Flutter 3.27 or newer and Firebase CLI, then authenticate with accounts that
have access to the Firebase project. The npm build script is provided for hosting
platforms that expect a `package.json`; it delegates to Flutter and does not install
or provide the Flutter SDK:

```powershell
npm run build
firebase deploy --only hosting
```

The Firebase project is selected by `.firebaserc`; Hosting serves `build/web` and
rewrites app routes to `index.html`.

For Hostinger Git deployment, use `npm run build` as the build command and `build/web`
as the publish directory only if the build environment has the Flutter SDK available
on `PATH`. If Hostinger's build environment does not provide Flutter, build the app
with Flutter in a local or CI environment and deploy the contents of `build/web` to
the site's document root (commonly `public_html`). A Node.js environment by itself
cannot build this Flutter app.

## Configure Firebase Authentication

The web app is initialized with the registered Firebase web app. In Firebase Console,
enable **Email/Password** under **Authentication → Sign-in method**. The app also
offers Google, Facebook, and Apple sign-in; enable and configure each provider before
using its button. Add `citymarketbusiness.com` to Authentication's authorized domains
after the custom domain is verified. Firebase Auth is currently configured for web;
native Android and iOS apps need their own registered-app configuration before auth
can be used on those platforms.

Product catalog, customer profiles, order storage, and payment processing are not
connected by Firebase Auth alone. They require a Firestore data model and security
rules, plus a payment provider and trusted server-side payment integration.

## Connect the custom domain

In the Firebase Console for `citymarket-business-c4a7a`, open **Hosting**, add
`citymarketbusiness.com` as a custom domain, and follow Firebase's ownership
verification and DNS instructions at the domain provider. Firebase provisions HTTPS
after DNS verification propagates. The domain cannot go live until those external
steps are completed.
