/**
 * D1 access for on-demand rendered pages.
 *
 * The site renders from the live database, so every page reads through the
 * `DB` binding declared in `wrangler.jsonc` rather than a build-time snapshot.
 */

import { drizzle, type DrizzleD1Database } from "drizzle-orm/d1";
import { env } from "cloudflare:workers";

export type Db = DrizzleD1Database;

/** A Drizzle client over the production `DB` binding. */
export function getDb(): Db {
  return drizzle(env.DB);
}
