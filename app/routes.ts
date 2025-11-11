import { type RouteConfig, index, layout, route } from "@react-router/dev/routes";

export default [
  // Public routes
  layout("routes/_public.tsx", [
    index("routes/_public._index.tsx"),
  ]),
  
  // Dashboard routes
  layout("routes/_dashboard.tsx", [
    route("dashboard", "routes/_dashboard._index.tsx"),
  ]),
] satisfies RouteConfig;