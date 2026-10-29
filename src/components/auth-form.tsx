"use client";

import Link from "next/link";
import Image from "next/image";
import { FormEvent, useState } from "react";
import { useSearchParams } from "next/navigation";
import { createUserWithEmailAndPassword, sendPasswordResetEmail, signInWithEmailAndPassword } from "firebase/auth";
import { auth } from "@/lib/firebase";

export function AuthForm() {
  const params = useSearchParams();
  const initialMode = params.get("mode") === "signup" ? "signup" : params.get("mode") === "reset" ? "reset" : "signin";
  const [mode, setMode] = useState(initialMode);
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [busy, setBusy] = useState(false);
  const [message, setMessage] = useState("");
  const [error, setError] = useState("");
  const title = mode === "signup" ? "Create New Account🔒" : mode === "reset" ? "Reset your password 🔑" : "Welcome Back!👋";

  async function submit(event: FormEvent<HTMLFormElement>) {
    event.preventDefault();
    setBusy(true);
    setError("");
    setMessage("");
    try {
      if (mode === "signup") {
        await createUserWithEmailAndPassword(auth, email, password);
        setMessage("Your account is ready. You're signed in.");
      } else if (mode === "reset") {
        await sendPasswordResetEmail(auth, email);
        setMessage("If an account exists for this address, a password reset email has been sent.");
      } else {
        await signInWithEmailAndPassword(auth, email, password);
        setMessage("You're signed in. Your grocery profile is not yet connected to a customer database.");
      }
    } catch (reason) {
      const code = typeof reason === "object" && reason && "code" in reason ? String(reason.code) : "";
      if (code === "auth/operation-not-allowed") setError("Email/password sign-in is disabled in Firebase Console. Enable it under Authentication → Sign-in method.");
      else if (code === "auth/unauthorized-domain") setError("This domain is not authorized in Firebase Console. Add it under Authentication → Settings → Authorized domains.");
      else if (code === "auth/email-already-in-use") setError("That email already has an account. Try signing in instead.");
      else if (code === "auth/invalid-credential" || code === "auth/wrong-password") setError("That email and password combination could not be verified.");
      else if (code === "auth/weak-password") setError("Use a password with at least six characters.");
      else if (code === "auth/invalid-email") setError("Enter a valid email address.");
      else setError("We couldn't complete sign-in. Check your connection and Firebase Authentication setup, then try again.");
    } finally {
      setBusy(false);
    }
  }

  return <div className="auth-wrap"><aside className="auth-aside"><span className="eyebrow">Good to have you here</span><h2>A familiar market, right at home.</h2><p>Sign in to CityMarket Business. Authentication uses the existing Firebase web app.</p><Image src="/assets/images/app_launcher_icon.png" alt="" width={70} height={70} style={{ marginTop: 20 }} /></aside><form className="auth-form" onSubmit={submit}><span className="eyebrow">Your account</span><h1>{title}</h1><p>{mode === "signup" ? "A few details and you're ready to explore." : mode === "reset" ? "We'll send a reset link if there's an account for that email." : "Your neighborhood market is right where you left it."}</p>{error && <div className="form-error" role="alert">{error}</div>}{message && <div className="form-success" role="status">{message}</div>}<div className="form-field"><label htmlFor="account-email">Email address</label><input id="account-email" type="email" autoComplete="email" required value={email} onChange={(event) => setEmail(event.target.value)} /></div>{mode !== "reset" && <div className="form-field"><label htmlFor="account-password">Password</label><input id="account-password" type="password" autoComplete={mode === "signup" ? "new-password" : "current-password"} minLength={6} required value={password} onChange={(event) => setPassword(event.target.value)} /></div>}{mode === "signin" && <button className="text-link" type="button" onClick={() => { setMode("reset"); setError(""); setMessage(""); }}>Forgot password?</button>}<button className="button" type="submit" disabled={busy}>{busy ? "Please wait…" : mode === "signup" ? "Create account" : mode === "reset" ? "Send reset link" : "Sign in"}</button><p className="auth-bottom">{mode === "signup" ? <>Already have an account? <button className="text-link" type="button" onClick={() => setMode("signin")}>Sign in</button></> : <>New to CityMarket? <button className="text-link" type="button" onClick={() => setMode("signup")}>Create an account</button></>}<br />{mode !== "signin" && <button className="text-link" type="button" onClick={() => setMode("signin")}>Back to sign in</button>}</p><p className="notice">Google, Facebook, and Apple sign-in are not wired up. Enable providers and configure OAuth credentials in Firebase Console before adding them.</p><p className="auth-bottom"><Link href="/profile/">← Back to profile</Link></p></form></div>;
}
