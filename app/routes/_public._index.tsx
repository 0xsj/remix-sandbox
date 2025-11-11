import { Button } from "~/components/ui/button";

export default function Home() {
  return (
    <div className="container mx-auto px-4 py-16">
      <div className="max-w-3xl mx-auto text-center mb-16">
        <h1 className="text-5xl font-bold mb-4">
          Welcome to Customer Feedback
        </h1>
        <p className="text-xl text-muted-foreground mb-8">
          A multi-tenant SaaS platform for managing customer feedback
        </p>
      </div>

      <div className="max-w-4xl mx-auto space-y-12">
        <section>
          <h2 className="text-2xl font-semibold mb-6">Button Variants</h2>
          <div className="flex flex-wrap gap-4">
            <Button variant="primary">Primary</Button>
            <Button variant="secondary">Secondary</Button>
            <Button variant="outline">Outline</Button>
            <Button variant="ghost">Ghost</Button>
            <Button variant="destructive">Destructive</Button>
          </div>
        </section>

        <section>
          <h2 className="text-2xl font-semibold mb-6">Button Sizes</h2>
          <div className="flex flex-wrap gap-4 items-center">
            <Button size="sm">Small</Button>
            <Button size="md">Medium</Button>
            <Button size="lg">Large</Button>
          </div>
        </section>

        <section>
          <h2 className="text-2xl font-semibold mb-6">Button States</h2>
          <div className="flex flex-wrap gap-4">
            <Button>Default</Button>
            <Button disabled>Disabled</Button>
          </div>
        </section>
      </div>
    </div>
  );
}
