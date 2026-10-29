"use client";

import Link from "next/link";
import { useEffect, useState } from "react";
import { onAuthStateChanged, signOut, type User } from "firebase/auth";
import { PageFrame } from "@/components/store-ui";
import { auth } from "@/lib/firebase";

export default function ProfilePage() {
  const [user, setUser] = useState<User | null>(null);
  const [ready, setReady] = useState(false);

  useEffect(() => onAuthStateChanged(auth, (nextUser) => {
    setUser(nextUser);
    setReady(true);
  }), []);

  return <PageFrame><main className="page-main container"><div className="page-intro"><span className="eyebrow">Your CityMarket</span><h1 className="page-title">A little space that’s yours.</h1><p>Sign in to manage your profile. Account information is handled by Firebase Authentication only.</p></div><div className="profile-grid"><nav className="profile-menu" aria-label="Profile settings">{user ? <button type="button" onClick={() => signOut(auth)}>Sign out</button> : <Link href="/sign-in/">Sign in or create account →</Link>}<Link href="/orders/">Order history</Link><Link href="/notifications/">Notifications</Link><Link href="/help/">Help & support</Link></nav><section className="profile-content"><h2>Account details</h2>{!ready ? <div className="loading-state">Checking your account…</div> : user ? <><div className="profile-row"><span>Signed in as</span><span>{user.email}</span></div><div className="profile-row"><span>Account created</span><span>{user.metadata.creationTime ?? "Unavailable"}</span></div><div className="profile-row"><span>Saved addresses</span><span>Not connected</span></div><div className="profile-row"><span>Payment methods</span><span>Not connected</span></div><div className="notice">This account is authenticated by Firebase. Customer profiles, saved addresses, and payment methods still need a connected backend.</div><button className="button" type="button" onClick={() => signOut(auth)}>Sign out</button></> : <><div className="profile-row"><span>Sign-in status</span><span>Signed out</span></div><div className="profile-row"><span>Saved addresses</span><span>Not connected</span></div><div className="profile-row"><span>Payment methods</span><span>Not connected</span></div><div className="notice">Profile, saved addresses, and payment methods need a customer data backend. Only email/password authentication is connected.</div><Link className="button" href="/sign-in/">Sign in to your account</Link></>}</section></div></main></PageFrame>;
}
