import { defineConfig } from "astro/config";
import cloudflare from "@astrojs/cloudflare";
import { cacheCloudflare } from "@astrojs/cloudflare/cache";
import tailwindcss from "@tailwindcss/vite";

// Hybrid rendering: the feed entry pages, the tag index and the popular tag
// pages are prerendered from D1 at build time, and everything else (the long
// tail of tags, deep feed pages, post details) renders on demand from the live
// D1 binding and is cached at the edge per URL, query string included.
//
// Prerendering runs in `workerd` through the adapter, and bindings come from the
// local Wrangler state directory — never from production. A production build
// restores the exported corpus into an isolated directory and points the build
// at it with `BUILD_D1_STATE_DIR` (see `scripts/build-production.mjs`); the
// runtime `DB` binding is untouched and stays production.

/**
 * Cache rules for the on-demand rendered routes. Prerendered pages are static
 * assets and never consult these; the root spread route serves everything else —
 * deep feed pages, the long tail of tags, and their canonical redirects — so a
 * 301 or a 404 can sit in the edge cache for up to `maxAge` as well.
 */
const ROUTE_RULES = {
  "/posts/[id]": { maxAge: 900, swr: 86400 },
  "/[...feed]": { maxAge: 300, swr: 3600 },
};

/**
 * A production build must read the isolated D1 copy that
 * `scripts/build-production.mjs` restores from the exported corpus. Any other
 * build in CI would prerender from an empty database and deploy a site with no
 * posts, so it fails here instead.
 */
function assertPrerenderDataSource(command) {
  if (command !== "build" || !process.env.CI) return;
  if (process.env.BUILD_D1_STATE_DIR) return;
  throw new Error(
    [
      "Refusing to build in CI without an explicit D1 snapshot.",
      "",
      "Prerendered pages read the `DB` binding from local Wrangler state. On a",
      "fresh CI checkout that database is empty, so the build would produce an",
      "empty site. Build production through:",
      "",
      "  npm run build:production -- --snapshot <d1-export.sql>",
      "",
      "which restores `wrangler d1 export <db> --remote --no-schema` into an",
      "isolated state directory and sets BUILD_D1_STATE_DIR for this build.",
      "",
      "Cloudflare Workers Builds (and any other push-to-deploy integration)",
      "must stay disconnected for this Worker: it runs a plain build with no",
      "snapshot and cannot produce a correct deployment.",
    ].join("\n"),
  );
}

export default defineConfig(resolveAstroConfig());

/**
 * Astro 7 does not call a top-level function config — only the `server` field
 * accepts one — so `defineConfig(({ command }) => ({ … }))` is merged as an
 * empty object and the build silently falls back to `output: "static"` with no
 * adapter and no Vite plugins. Resolve to a plain object here instead, and read
 * the command from `argv`.
 */
function resolveAstroConfig() {
  assertPrerenderDataSource(process.argv.includes("build") ? "build" : "dev");

  // Set by scripts/build-production.mjs to the isolated restore directory.
  // Absolute, because Wrangler resolves `--persist-to` against its own cwd.
  const stateDir = process.env.BUILD_D1_STATE_DIR;

  return {
    output: "server",
    adapter: cloudflare({
      prerenderEnvironment: "workerd",
      // Bindings marked `remote: true` are ignored: neither the build nor the dev
      // server may reach production D1 or KV.
      remoteBindings: false,
      persistState: stateDir ? { path: stateDir } : true,
    }),
    cache: { provider: cacheCloudflare() },
    routeRules: ROUTE_RULES,
    vite: {
      plugins: [tailwindcss()],
    },
  };
}
