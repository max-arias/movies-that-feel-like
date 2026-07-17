// packages/db/validate-schema.ts
// PRAGMA-based drift detection: compares Drizzle schema columns against
// the actual D1 database schema. Exits 1 on any mismatch.
//
// Usage: tsx validate-schema.ts
// Requires: local D1 with migrations applied (npm run db:migrate)

import { execSync } from "node:child_process";
import { fileURLToPath } from "node:url";
import { dirname, resolve } from "node:path";
import * as schema from "./schema";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);
const repoRoot = resolve(__dirname, "../..");

const WRANGLER_CONFIG = resolve(repoRoot, "apps/astro/wrangler.jsonc");
const DB_NAME = "movies-that-feel-like";

const TABLES: Record<string, Record<string, unknown>> = {
  imported_vibe_posts: schema.importedVibePosts,
  imported_post_images: schema.importedPostImages,
  recommendations: schema.recommendations,
  recommendation_evidence: schema.recommendationEvidence,
  vibe_tags: schema.vibeTags,
  processing_runs: schema.processingRuns,
  pipeline_artifacts: schema.pipelineArtifacts,
} as const;

/**
 * Extract SQL column names from a Drizzle table definition.
 * Uses the internal drizzle:Columns symbol which stores column-name mappings.
 */
function getDrizzleColumnNames(tableDef: Record<string, unknown>): string[] {
  const columnsSymbol = Object.getOwnPropertySymbols(tableDef).find((s) =>
    s.toString().includes("Columns")
  );
  if (!columnsSymbol) {
    throw new Error(
      `Could not find drizzle:Columns symbol on table definition`
    );
  }
  const columns = tableDef[columnsSymbol] as Record<string, { name: string }>;
  return Object.values(columns).map((c) => c.name);
}

/**
 * Fetch column names from the live D1 database via PRAGMA table_info.
 */
function getDbColumnNames(tableName: string): string[] {
  const cmd = `npx wrangler d1 execute ${DB_NAME} --local --config "${WRANGLER_CONFIG}" --command "PRAGMA table_info('${tableName}')" --json`;
  const output = execSync(cmd, {
    encoding: "utf-8",
    cwd: repoRoot,
    stdio: ["pipe", "pipe", "pipe"],
  });
  const parsed = JSON.parse(output);

  // wrangler output format: [{ results: [...], success: true, meta: {...} }]
  const rows = parsed?.[0]?.results ?? parsed?.results ?? [];
  return rows.map((r: { name: string }) => r.name);
}

async function validate() {
  let hasError = false;
  const entryCount = Object.keys(TABLES).length;

  for (const [tableName, tableDef] of Object.entries(TABLES)) {
    try {
      const dbColumns = getDbColumnNames(tableName);
      const schemaColumns = getDrizzleColumnNames(tableDef);

      const dbColSet = new Set(dbColumns);
      const schemaColSet = new Set(schemaColumns);

      const missingInSchema = dbColumns.filter((c) => !schemaColSet.has(c));
      const missingInDb = schemaColumns.filter((c) => !dbColSet.has(c));

      if (missingInSchema.length || missingInDb.length) {
        console.error(`❌ Drift detected in ${tableName}:`);
        if (missingInSchema.length) {
          console.error(
            `   In DB but not in schema: ${missingInSchema.join(", ")}`
          );
        }
        if (missingInDb.length) {
          console.error(
            `   In schema but not in DB: ${missingInDb.join(", ")}`
          );
        }
        hasError = true;
      } else {
        console.log(`✅ ${tableName}: ${dbColumns.length} columns match`);
      }
    } catch (err) {
      console.error(`❌ Failed to validate ${tableName}:`, err);
      hasError = true;
    }
  }

  if (hasError) {
    console.error(`\n❌ Drift detected in ${entryCount - 0} table(s) — exiting with code 1`);
    process.exit(1);
  }
  console.log(`\n✅ All ${entryCount} tables validated successfully`);
}

validate();
