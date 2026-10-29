# CityMarket Business

CityMarket Business is a Flutter app configured for web deployment with Firebase Hosting.

## Build and deploy the web app

Install the Flutter stable SDK and Firebase CLI, then authenticate with accounts that
have access to the Firebase project:

```powershell
flutter build web --release
firebase deploy --only hosting
```

The Firebase project is selected by `.firebaserc`; Hosting serves `build/web` and
rewrites app routes to `index.html`.

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
