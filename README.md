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

## Connect the custom domain

In the Firebase Console for `citymarket-business-c4a7a`, open **Hosting**, add
`citymarketbusiness.com` as a custom domain, and follow Firebase's ownership
verification and DNS instructions at the domain provider. Firebase provisions HTTPS
after DNS verification propagates. The domain cannot go live until those external
steps are completed.
