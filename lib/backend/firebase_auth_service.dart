import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FirebaseAuthService {
  static FirebaseAuth get _auth {
    if (Firebase.apps.isEmpty) {
      throw StateError(
        'Firebase is not configured for this platform. '
        'Use the CityMarket Business web app or configure this platform first.',
      );
    }
    return FirebaseAuth.instance;
  }

  static Future<UserCredential> signIn({
    required String email,
    required String password,
  }) {
    return _auth.signInWithEmailAndPassword(
      email: email.trim(),
      password: password,
    );
  }

  static void syncDisplayName(UserCredential credential) {
    final name = credential.user?.displayName?.trim();
    if (name != null && name.isNotEmpty) {
      FFAppState().update(() => FFAppState().name = name);
    }
  }

  static Future<UserCredential> createAccount({
    required String name,
    required String email,
    required String password,
  }) async {
    final credential = await _auth.createUserWithEmailAndPassword(
      email: email.trim(),
      password: password,
    );
    await credential.user?.updateDisplayName(name.trim());
    await credential.user?.reload();
    return credential;
  }

  static Future<void> sendPasswordResetEmail(String email) {
    return _auth.sendPasswordResetEmail(email: email.trim());
  }

  static Future<UserCredential> signInWithProvider(String providerId) {
    final provider = switch (providerId) {
      'google.com' => GoogleAuthProvider(),
      'facebook.com' => FacebookAuthProvider(),
      'apple.com' => OAuthProvider('apple.com'),
      _ => throw ArgumentError.value(providerId, 'providerId'),
    };
    return _auth.signInWithPopup(provider);
  }

  static String errorMessage(FirebaseAuthException error) {
    return switch (error.code) {
      'email-already-in-use' => 'An account already uses this email address.',
      'invalid-email' => 'Enter a valid email address.',
      'invalid-credential' ||
      'wrong-password' ||
      'user-not-found' => 'The email or password is incorrect.',
      'weak-password' => 'Choose a password with at least 6 characters.',
      'user-disabled' => 'This account has been disabled.',
      'too-many-requests' => 'Too many attempts. Please wait and try again.',
      'network-request-failed' =>
        'Unable to reach Firebase. Check your internet connection.',
      'operation-not-allowed' =>
        'This sign-in method is not enabled in Firebase Authentication.',
      'popup-closed-by-user' => 'Sign-in was cancelled.',
      'account-exists-with-different-credential' =>
        'An account already exists with this email and another sign-in method.',
      _ => 'Authentication failed (${error.code}). Please try again.',
    };
  }
}
