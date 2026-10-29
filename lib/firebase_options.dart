import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

class DefaultFirebaseOptions {
  static FirebaseOptions get web => const FirebaseOptions(
    apiKey: 'AIzaSyCeTFIX-A68g_r6nnWc2u9-U-qinok7Ur0',
    appId: '1:118579838063:web:0dbf0321c20e1e497fa19a',
    messagingSenderId: '118579838063',
    projectId: 'citymarket-business-c4a7a',
    authDomain: 'citymarket-business-c4a7a.firebaseapp.com',
    storageBucket: 'citymarket-business-c4a7a.firebasestorage.app',
    measurementId: 'G-QPFKHG4TT5',
  );

  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
      case TargetPlatform.linux:
      case TargetPlatform.fuchsia:
        throw UnsupportedError(
          'Firebase is configured for the web app. Register this platform '
          'and add its Firebase configuration before using Firebase here.',
        );
    }
  }
}
