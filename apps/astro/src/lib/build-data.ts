/**
 * Build-only data loader for the static Astro pages.
 *
 * The Cloudflare D1 binding belongs here so public page modules only depend on
 * the build data interface. Astro invokes this loader while prerendering the
 * site; it is not a per-request data path.
 */

import { env } from "cloudflare:workers";
import { getDb } from "./db";
import { getBuildData as loadBuildData } from "./db/queries";

const db = getDb(env);

/** Load and cache the complete D1-backed data set for the static build. */
export function getBuildData() {
  return loadBuildData(db);
}
