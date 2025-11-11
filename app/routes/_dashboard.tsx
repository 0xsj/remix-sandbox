import { Outlet } from "react-router";
import { ThemeToggle } from "~/components/ui/theme-toggle";

export default function DashboardLayout() {
  return (
    <div className="min-h-screen flex">
      {/* Sidebar */}
      <aside className="w-64 border-r bg-muted/40">
        <div className="flex h-16 items-center border-b px-6">
          <h1 className="font-semibold">Dashboard</h1>
        </div>
        <nav className="space-y-1 p-4">
          <a
            href="/dashboard"
            className="block px-4 py-2 rounded-md hover:bg-accent"
          >
            Overview
          </a>
          <a
            href="/dashboard/feedback"
            className="block px-4 py-2 rounded-md hover:bg-accent"
          >
            Feedback
          </a>
          <a
            href="/dashboard/analytics"
            className="block px-4 py-2 rounded-md hover:bg-accent"
          >
            Analytics
          </a>
        </nav>
      </aside>

      {/* Main content */}
      <div className="flex-1 flex flex-col">
        <header className="h-16 border-b bg-background flex items-center justify-end px-6">
          <ThemeToggle />
        </header>

        <main className="flex-1 p-6">
          <Outlet />
        </main>
      </div>
    </div>
  );
}
