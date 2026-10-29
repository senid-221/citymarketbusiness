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

For Hostinger, `.github/workflows/deploy-hostinger.yml` builds the app with Flutter
and deploys `build/web` over SSH after changes reach `main`. Enable SSH access in
Hostinger, then add these repository secrets under **Settings → Secrets and variables
→ Actions**:

- `HOSTINGER_SSH_HOST`, `HOSTINGER_SSH_PORT`, and `HOSTINGER_SSH_USERNAME` from
  Hostinger's SSH access details.
- `HOSTINGER_SSH_PRIVATE_KEY`, the private key for an SSH key authorized on the
  Hostinger account.
- `HOSTINGER_SSH_KNOWN_HOSTS`, the verified SSH host-key entry for the Hostinger
  server and port.
- `HOSTINGER_DEPLOY_PATH`, the absolute document-root path ending in `/public_html`.

The workflow builds on every push to `main`. If deployment secrets are not yet
configured, it still builds the site and skips deployment with a warning. After
adding the secrets, run the workflow manually from the Actions tab to deploy without
needing another code change. The workflow does not delete other files in the target
directory.

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
