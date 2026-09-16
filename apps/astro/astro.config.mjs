import { defineConfig } from "astro/config";
import cloudflare from "@astrojs/cloudflare";
import { cacheCloudflare } from "@astrojs/cloudflare/cache";
import tailwindcss from "@tailwindcss/vite";

// The feed is a query over a corpus that grows daily (2.2k posts, 2.4k tags),
// so every route renders on demand from D1 and the result is cached at the
// edge per URL — query string included — instead of being materialised into
// static files at build time.
export default defineConfig({
  output: "server",
  adapter: cloudflare(),
  cache: { provider: cacheCloudflare() },
  routeRules: {
    "/": { maxAge: 300, swr: 3600 },
    "/posts/[id]": { maxAge: 900, swr: 86400 },
  },
  vite: {
    plugins: [tailwindcss()],
  },
});
