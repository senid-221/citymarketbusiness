# CityMarket Business

The published web app is the original Flutter app built for Flutter Web. The
Flutter screens, app assets, and navigation remain in `lib/`, `assets/`, and
`web/`. The repository also contains a Next.js implementation from an earlier
iteration, but it is not the Hostinger deployment target.

## Build the Flutter web app

Install Flutter 3.47.8 or later and run:

```powershell
flutter pub get
flutter build web --release
```

The deployable static site is created in `build/web/`. No Node.js server or
`package.json` build script is needed to serve the Flutter output.

## Build and upload to Hostinger without SSH

The GitHub Actions workflow `.github/workflows/build-flutter-web.yml` builds the
Flutter app on pushes to `main` and on manual workflow dispatch. It uploads
`build/web/` as the `citymarketbusiness-web` artifact; it does not connect to
Hostinger or require SSH credentials.

To publish the artifact:

1. Open the successful workflow run in GitHub Actions and download
   `citymarketbusiness-web`.
2. Extract the archive on your computer.
3. In Hostinger File Manager, open the domain's `public_html` directory. Remove
   the old error-page files if present, then upload all files and folders from
   the extracted archive there, including `index.html`, `assets/`, `canvaskit/`,
   and `flutter_bootstrap.js`.
4. Confirm that `index.html` is directly inside `public_html` and reload the
   domain. If Hostinger still returns 403, check that the domain points to this
   document root and that `index.html` is readable by the web server.

Do not configure Hostinger to run `npm run build`: its Node build environment
does not include the Flutter SDK. The root `package.json` belongs to the
separate Next.js code and does not create the Flutter web files.

## Firebase and AI grocery planner

The Flutter planner calls the authenticated Firebase HTTPS Function
`generateGroceryPlan` after the user completes the original planner selections.
It sends the signed-in user's Firebase ID token, then displays catalog-backed
recommendations using the app's existing product images and card layout. The
function uses Gemini server-side, validates products and prices against
`functions/data/products.json`, and limits each account to five plans per day.
The API key is never included in the Flutter app.

To enable the planner:

1. Use a Firebase project on the Blaze plan, enable Firestore and the
   Generative Language API, and install the Firebase CLI.
2. Set the key as a Firebase Functions secret:

   ```powershell
   firebase functions:secrets:set GEMINI_API_KEY
   ```

3. Deploy the HTTPS Function and Firestore rules:

   ```powershell
   firebase deploy --only functions:generateGroceryPlan,firestore:rules
   ```

The Flutter app already includes its Firebase web configuration. Gemini
credentials are not required to build the app, but the AI planner will not work
until the Function, Firestore, Gemini API access, and secret are configured and
deployed. Generated recipes may be inaccurate and are not medical or dietary
advice; always check product labels.

## Earlier Next.js implementation

The Next.js storefront in `app/` and `src/` is retained from a previous web-app
iteration but is not the deployment target for the original Flutter experience.
Its Node scripts and Firebase configuration do not change the Flutter build or
Hostinger upload steps above.
