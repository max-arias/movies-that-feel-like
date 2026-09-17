/**
 * D1 access shared by prerendered and on-demand pages.
 * Builds bind an isolated local export; deployed SSR binds production D1.
 */

import { drizzle, type DrizzleD1Database } from "drizzle-orm/d1";
import { env } from "cloudflare:workers";

export type Db = DrizzleD1Database;

/** A Drizzle client over the current environment's `DB` binding. */
export function getDb(): Db {
  return drizzle(env.DB);
}
