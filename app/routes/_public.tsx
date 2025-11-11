import { Outlet } from "react-router";
import { ThemeToggle } from "~/components/ui/theme-toggle";

export default function PublicLayout() {
  return (
    <div className="min-h-screen flex flex-col">
      <header className="sticky top-0 z-50 w-full border-b bg-background/95 backdrop-blur">
        <div className="container mx-auto flex h-16 items-center justify-between px-4">
          <h1 className="text-xl font-semibold">Customer Feedback</h1>
          <ThemeToggle />
        </div>
      </header>

      <main className="flex-1">
        <Outlet />
      </main>

      <footer className="border-t py-6">
        <div className="container mx-auto px-4 text-center text-sm text-muted-foreground">
          © 2025 Customer Feedback. All rights reserved.
        </div>
      </footer>
    </div>
  );
}
