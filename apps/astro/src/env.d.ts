/// <reference types="astro/client" />

declare namespace Cloudflare {
  interface Env {
    DB: D1Database;
    ASSETS: Fetcher;
  }
}

interface ImportMetaEnv {
  /** Which site this build is: `movies` or `games`. Inlined by astro.config.mjs from `SITE`. */
  readonly SITE_ID: string;
}
