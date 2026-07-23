/**
 * Internal D1 database adapter used by the build-only data loader.
 *
 * Usage:
 *   import { getDb } from "../lib/db";
 *   const db = getDb(env);
 *
 * The `getDb()` factory returns a lightweight Drizzle wrapper around the D1
 * binding. Runtime page modules must use `../build-data` instead of importing
 * this adapter or the Cloudflare binding directly.
 */

import { drizzle } from "drizzle-orm/d1";

export function getDb(env: { DB: D1Database }) {
  return drizzle(env.DB);
}
