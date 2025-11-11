import { useTheme } from "~/lib/theme-context";
import { Button } from "./button";

export function ThemeToggle() {
  const { theme, toggleTheme } = useTheme();

  return (
    <Button variant="ghost" size="md" onClick={toggleTheme}>
      {theme === "light" ? "🌞" : "🌙"}
    </Button>
  );
}
