import { Button } from "~/components/ui/button";

export default function DashboardHome() {
  return (
    <div>
      <h1 className="text-3xl font-bold mb-6">Dashboard Overview</h1>

      <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
        <div className="rounded-lg border bg-card p-6">
          <h3 className="font-semibold mb-2">Total Feedback</h3>
          <p className="text-3xl font-bold">1,234</p>
        </div>

        <div className="rounded-lg border bg-card p-6">
          <h3 className="font-semibold mb-2">Pending</h3>
          <p className="text-3xl font-bold">42</p>
        </div>

        <div className="rounded-lg border bg-card p-6">
          <h3 className="font-semibold mb-2">Resolved</h3>
          <p className="text-3xl font-bold">1,192</p>
        </div>
      </div>

      <div className="mt-8">
        <Button>View All Feedback</Button>
      </div>
    </div>
  );
}
