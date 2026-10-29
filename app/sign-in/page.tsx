import { Suspense } from "react";
import { PageFrame } from "@/components/store-ui";
import { AuthForm } from "@/components/auth-form";

export default function SignInPage() {
  return <PageFrame><main className="page-main container"><Suspense fallback={<div className="loading-state">Opening your account…</div>}><AuthForm /></Suspense></main></PageFrame>;
}
