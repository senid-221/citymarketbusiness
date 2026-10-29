import { PageFrame } from "@/components/store-ui";
import { AiPlanner } from "@/components/ai-planner";

export default function AiPlannerPage() {
  return (
    <PageFrame>
      <main className="page-main container">
        <div className="page-intro">
          <span className="eyebrow">A little help with dinner</span>
          <h1 className="page-title">Plan a few good meals.</h1>
          <p>
            Tell our AI what you need. It will build a meal plan from the CityMarket
            catalog and estimate the real catalog prices.
          </p>
        </div>
        <AiPlanner />
      </main>
    </PageFrame>
  );
}
