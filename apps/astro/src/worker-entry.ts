import server from "@astrojs/cloudflare/entrypoints/server";
import { getDb } from "./lib/db";
import { legacyRootRedirect } from "./lib/feed-routes";

/**
 * Worker entrypoint for the site.
 *
 * `/` is prerendered, and the Cloudflare adapter never reaches Astro's routes or
 * middleware for a prerendered route without params: `App.match()` returns
 * nothing for it and the adapter handler falls back to `env.ASSETS`. So the
 * legacy feed URLs that carried the pre-slug query string
 * (`/?tag=friendship&page=2`) have to be answered here, before the adapter sees
 * the request. A queryless root is handed to the asset worker, which serves the
 * prerendered feed page; every other request is delegated unchanged.
 *
 * `wrangler.jsonc` routes `/` to this Worker (`assets.run_worker_first`) — without
 * that, the asset worker answers `/` first and the redirect never runs.
 */
export default {
  async fetch(request: Request, env: Cloudflare.Env, ctx: ExecutionContext): Promise<Response> {
    const url = new URL(request.url);

    if (url.pathname === "/") {
      const location = await legacyRootRedirect(getDb(), url);
      if (location) return Response.redirect(new URL(location, url), 301);

      const isRead = request.method === "GET" || request.method === "HEAD";
      if (isRead && env.ASSETS) {
        const asset = await env.ASSETS.fetch(request);
        if (asset.status !== 404) return asset;
      }
    }

    return server.fetch(request, env, ctx);
  },
};
