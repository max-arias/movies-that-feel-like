/**
 * Public D1 database API.
 *
 * Usage:
 *   import { getDb, getBuildData } from "../lib/db";
 *   const db = getDb(env);
 *   const { posts } = await getBuildData(db);
 *
 * The `getDb()` factory returns a lightweight Drizzle wrapper around
 * the D1 binding. It does NOT cache — call it per-request as needed.
 */

import { drizzle } from "drizzle-orm/d1";

export function getDb(env: { DB: D1Database }) {
  return drizzle(env.DB);
}

export {
  getBuildData,
} from "./queries";
