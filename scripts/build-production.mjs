#!/usr/bin/env node
/**
 * Production build: restore an exported D1 corpus, then prerender the site from it.
 *
 * The feed pages that are prerendered read the `DB` binding at build time, and
 * that binding resolves to local Wrangler state (see `astro.config.mjs`). This
 * script therefore:
 *
 *   1. exports nothing itself and never talks to Cloudflare — the caller passes
 *      a snapshot produced by
 *      `wrangler d1 export <db> --remote --no-schema --output <file>`;
 *   2. builds an isolated local D1 from the tracked migrations and imports the
 *      snapshot into it, leaving the developer's own `.wrangler/state` alone.
 *      Applying the migrations also seeds a corpus — the generated data
 *      migrations re-insert the whole thing — so every application table is
 *      emptied first, with the summary triggers dropped so that the exported
 *      summary rows land verbatim instead of being counted a second time;
 *   3. refuses to build when the restored corpus is empty, and refuses to report
 *      success unless the build emitted real prerendered pages (an empty build
 *      deployed over a working site is the failure this guards against).
 *
 * Usage:
 *   node scripts/build-production.mjs --snapshot <d1-export.sql> [--state-dir <dir>] [--db <name>]
 *
 * A snapshot from the local development database is enough to exercise the same
 * path without production credentials:
 *   npx wrangler d1 export movies-that-feel-like --local --no-schema --output /tmp/dev.sql
 *   node scripts/build-production.mjs --snapshot /tmp/dev.sql
 */

import { execFileSync } from "node:child_process";
import { createHash } from "node:crypto";
import { existsSync, mkdirSync, readFileSync, readdirSync, rmSync, statSync, writeFileSync } from "node:fs";
import { join, relative, resolve } from "node:path";
import { fileURLToPath } from "node:url";

const REPO_ROOT = resolve(fileURLToPath(new URL("..", import.meta.url)));
const WRANGLER_CONFIG = join("apps", "astro", "wrangler.jsonc");
const ASTRO_DIR = join(REPO_ROOT, "apps", "astro");
const BUILT_WRANGLER_CONFIG = join(ASTRO_DIR, "dist", "server", "wrangler.json");
const BUILT_CLIENT_DIR = join(ASTRO_DIR, "dist", "client");
const DEFAULT_STATE_DIR = join(REPO_ROOT, ".build", "d1-build-state");
const DEV_STATE_DIR = join(ASTRO_DIR, ".wrangler");

const USAGE = `Usage: node scripts/build-production.mjs --snapshot <d1-export.sql> [options]

  --snapshot <file>   Data-only D1 export to restore before building (required).
  --state-dir <dir>   Isolated Wrangler state directory for the restored
                      database (default: .build/d1-build-state).
  --db <name>         D1 database name (default: $D1_DATABASE_NAME or
                      movies-that-feel-like).
  --help              Show this message.

The snapshot must be a data-only export; produce it with:

  npx wrangler d1 export <db> --remote --no-schema --output <file>
`;

function parseArgs(argv) {
  const options = { snapshot: undefined, stateDir: undefined, db: undefined };
  for (let index = 0; index < argv.length; index += 1) {
    const flag = argv[index];
    const value = argv[index + 1];
    switch (flag) {
      case "--snapshot":
        options.snapshot = value;
        index += 1;
        break;
      case "--state-dir":
        options.stateDir = value;
        index += 1;
        break;
      case "--db":
        options.db = value;
        index += 1;
        break;
      case "--help":
      case "-h":
        process.stdout.write(USAGE);
        process.exit(0);
        break;
      default:
        fatal(`Unknown argument: ${flag}\n\n${USAGE}`);
    }
  }
  return options;
}

function fatal(message) {
  process.stderr.write(`\nbuild-production: ${message}\n`);
  process.exit(1);
}

function step(message) {
  process.stdout.write(`\n==> ${message}\n`);
}

/** Repo-relative when inside the repository, absolute otherwise. */
function display(path) {
  const relativePath = relative(REPO_ROOT, path);
  return relativePath.startsWith("..") ? path : relativePath;
}

function run(command, args, { env, capture = false } = {}) {
  return execFileSync(command, args, {
    cwd: REPO_ROOT,
    env: env ? { ...process.env, ...env } : process.env,
    encoding: "utf8",
    stdio: capture ? ["ignore", "pipe", "inherit"] : "inherit",
  });
}

function wrangler(args, { capture = false } = {}) {
  return run("npx", ["wrangler", ...args, "--config", WRANGLER_CONFIG], { capture });
}

/** Run one SQL statement against the restored local database and return its rows. */
function query(db, stateDir, sql) {
  const output = wrangler(
    ["d1", "execute", db, "--local", "--persist-to", stateDir, "--json", "--command", sql],
    { capture: true },
  );
  let parsed;
  try {
    parsed = JSON.parse(output);
  } catch {
    fatal(`Could not parse wrangler JSON output for query:\n${sql}\n\n${output}`);
  }
  const results = parsed?.[0]?.results;
  if (parsed?.[0]?.success !== true || !Array.isArray(results)) {
    fatal(`Query failed: ${sql}\n\n${output}`);
  }
  return results;
}

/** Run one SQL statement and return its single numeric value. */
function queryNumber(db, stateDir, sql) {
  const rows = query(db, stateDir, sql);
  const value = Object.values(rows[0] ?? {})[0];
  const number = Number(value);
  if (rows.length !== 1 || !Number.isFinite(number)) {
    fatal(`Expected one numeric row from: ${sql}\n\n${JSON.stringify(rows)}`);
  }
  return number;
}

function assertSnapshotIsDataOnly(snapshotPath) {
  const sql = readFileSync(snapshotPath, "utf8");
  if (/(^|\n)\s*CREATE\s+(TABLE|VIEW|INDEX|UNIQUE|TRIGGER)/i.test(sql)) {
    fatal(
      [
        `Snapshot ${display(snapshotPath)} contains schema statements.`,
        "The production build applies the tracked migrations itself and restores data",
        "on top of them, so the snapshot must be a data-only export:",
        "",
        "  npx wrangler d1 export <db> --remote --no-schema --output <file>",
      ].join("\n"),
    );
  }
  if (!/(^|\n)INSERT\s+INTO\s/i.test(sql)) {
    fatal(
      `Snapshot ${display(snapshotPath)} contains no INSERT statements; refusing to build from an empty export.`,
    );
  }
  return sql;
}

function checksum(path) {
  return createHash("sha256").update(readFileSync(path)).digest("hex");
}

/**
 * Refuse to touch anything that could be the developer's own Wrangler state — a
 * restore wipes its target, and wiping the local corpus would be unrecoverable.
 */
function resolveStateDir(requested) {
  const stateDir = resolve(REPO_ROOT, requested ?? DEFAULT_STATE_DIR);
  if (stateDir === REPO_ROOT || REPO_ROOT.startsWith(`${stateDir}/`)) {
    fatal(`Refusing to use ${stateDir} as the restore directory: it contains the repository.`);
  }
  if (stateDir === DEV_STATE_DIR || stateDir.startsWith(`${DEV_STATE_DIR}/`)) {
    fatal(
      `Refusing to restore into ${stateDir}: that is the local development state directory. ` +
        "Pass --state-dir with a path outside apps/astro/.wrangler.",
    );
  }
  return stateDir;
}

/**
 * The restore keeps the exported summary rows verbatim, so the triggers that
 * maintain them must not fire while the data is imported. They are captured
 * here, dropped for the import, and recreated afterwards.
 */
function captureTriggers(db, stateDir) {
  return query(
    db,
    stateDir,
    "SELECT name, sql FROM sqlite_master WHERE type = 'trigger' AND sql IS NOT NULL ORDER BY name",
  ).map((row) => ({ name: String(row.name), sql: String(row.sql).trim().replace(/;?$/, ";") }));
}

/**
 * Empty every application table before the snapshot is imported. The migrations
 * that built the schema also seeded data — and a full migration history re-seeds
 * the whole corpus — so the import would otherwise hit primary keys that are
 * already taken. Tables are cleared children-first (reverse creation order); the
 * deferred-foreign-keys pragma covers any dependency the ordering misses.
 *
 * `d1_migrations` is kept unless the snapshot carries production's ledger, which
 * replaces the rows `migrations apply` just wrote.
 */
function clearApplicationData(db, stateDir, dumpCarriesMigrationLedger) {
  const tables = query(
    db,
    stateDir,
    [
      "SELECT name FROM sqlite_master",
      "WHERE type = 'table'",
      "AND name NOT LIKE 'sqlite_%'",
      "AND name NOT LIKE '_cf_%'",
      "AND name <> 'd1_migrations'",
      "ORDER BY rowid DESC",
    ].join(" "),
  ).map((row) => String(row.name));
  if (tables.length === 0) fatal("The migrated database has no application tables.");

  const statements = ["PRAGMA defer_foreign_keys = TRUE;"];
  if (dumpCarriesMigrationLedger) statements.push("DELETE FROM d1_migrations;");
  for (const table of tables) statements.push(`DELETE FROM "${table.replace(/"/g, '""')}";`);
  wrangler(["d1", "execute", db, "--local", "--persist-to", stateDir, "--command", statements.join(" ")]);
  process.stdout.write(`Cleared ${tables.length} application tables.\n`);
}

/**
 * The summaries are derived data, so after the restore they are recomputed from
 * the restored rows and compared. These queries mirror the predicates in
 * `packages/db/migrations/0192_displayability_and_summaries.sql`: a post is
 * displayable while it owns an image with `deleted_at IS NULL`, and the counts
 * are publishable, displayable posts. If either predicate moves, the migration
 * and this check must move together — the check fails loudly rather than
 * deploying pages built from counts that no longer mean what the code thinks.
 */
function verifyRestoredCorpus(db, stateDir, triggers) {
  const posts = queryNumber(db, stateDir, "SELECT COUNT(*) AS n FROM imported_vibe_posts");
  if (posts === 0) {
    fatal(
      "The restored database has no posts. The snapshot is empty (or was taken from an " +
        "unseeded database); deploying it would replace the live site with an empty one.",
    );
  }

  const postCount = queryNumber(db, stateDir, "SELECT post_count AS n FROM site_stats WHERE id = 1");
  if (postCount <= 0) {
    fatal(
      `Restored site_stats.post_count is ${postCount}, so no post is publishable and displayable. ` +
        "Refusing to build a feed-less site.",
    );
  }

  const displayabilityMismatches = queryNumber(
    db,
    stateDir,
    `SELECT COUNT(*) AS n FROM imported_vibe_posts p
      WHERE p.is_displayable <> (
        CASE WHEN EXISTS (
          SELECT 1 FROM imported_post_images i
           WHERE i.imported_vibe_post_id = p.id AND i.deleted_at IS NULL
        ) THEN 1 ELSE 0 END
      )`,
  );
  if (displayabilityMismatches !== 0) {
    fatal(
      `${displayabilityMismatches} restored posts disagree with the displayability predicate ` +
        "(an image with deleted_at IS NULL). The snapshot's derived column is not consistent " +
        "with its rows; check the migration that maintains it.",
    );
  }

  const livePostCount = queryNumber(
    db,
    stateDir,
    "SELECT COUNT(*) AS n FROM imported_vibe_posts WHERE status = 'publishable' AND is_displayable = 1",
  );
  if (livePostCount !== postCount) {
    fatal(
      `Restored site_stats.post_count is ${postCount}, but the restored rows hold ${livePostCount} ` +
        "publishable, displayable posts. The summary was counted twice or drifted; the feed pages " +
        "would paginate over a count that does not exist.",
    );
  }

  const tagRows = queryNumber(db, stateDir, "SELECT COUNT(*) AS n FROM tag_counts");
  if (tagRows === 0) {
    fatal("The restored database has no tag counts; the tag pages would be empty.");
  }

  const tagMismatches = queryNumber(
    db,
    stateDir,
    `SELECT COUNT(*) AS n FROM tag_counts tc
      WHERE tc."count" <> (
        SELECT COUNT(*) FROM vibe_tags vt
          JOIN imported_vibe_posts p ON p.id = vt.imported_vibe_post_id
         WHERE vt.tag = tc.tag
           AND p.status = 'publishable'
           AND p.is_displayable = 1
      )`,
  );
  if (tagMismatches !== 0) {
    fatal(
      `${tagMismatches} restored tag counts disagree with the restored rows. Tag pages would be ` +
        "built from counts that do not match the corpus; check the summary triggers.",
    );
  }

  const unstattedTags = queryNumber(
    db,
    stateDir,
    `SELECT COUNT(*) AS n FROM (
       SELECT DISTINCT tag FROM vibe_tags vt
        WHERE NOT EXISTS (SELECT 1 FROM tag_counts tc WHERE tc.tag = vt.tag)
     )`,
  );
  if (unstattedTags !== 0) {
    fatal(
      `${unstattedTags} restored tags have no tag_counts row, so the tag index and the ` +
        "prerendered tag pages would be incomplete.",
    );
  }

  const restoredTriggers = queryNumber(
    db,
    stateDir,
    "SELECT COUNT(*) AS n FROM sqlite_master WHERE type = 'trigger'",
  );
  if (restoredTriggers !== triggers.length) {
    fatal(
      `Restored database has ${restoredTriggers} triggers, expected ${triggers.length}. ` +
        "The summary tables would stop tracking writes in production; check the migrations.",
    );
  }

  process.stdout.write(
    `Restored corpus: ${posts} posts, site_stats.post_count=${livePostCount} (matches the rows), ` +
      `${tagRows} tag rows with matching counts, ${restoredTriggers} triggers restored.\n`,
  );
}

function htmlFiles(dir, out = []) {
  for (const entry of readdirSync(dir, { withFileTypes: true })) {
    const path = join(dir, entry.name);
    if (entry.isDirectory()) htmlFiles(path, out);
    else if (entry.name.endsWith(".html")) out.push(path);
  }
  return out;
}

/**
 * An empty deployment is worse than a failed one: check that the prerender phase
 * actually produced the feed, the tag index and at least one tag page.
 */
function verifyBuildOutput() {
  if (!existsSync(BUILT_WRANGLER_CONFIG)) {
    fatal(`Build did not emit ${relative(REPO_ROOT, BUILT_WRANGLER_CONFIG)}.`);
  }
  const workerConfig = JSON.parse(readFileSync(BUILT_WRANGLER_CONFIG, "utf8"));
  if (!workerConfig.main) fatal("Built worker config has no `main` entrypoint.");
  if (!workerConfig.assets?.directory) fatal("Built worker config has no assets directory.");
  if (!Array.isArray(workerConfig.d1_databases) || workerConfig.d1_databases.length === 0) {
    fatal("Built worker config dropped the D1 binding; on-demand pages would have no database.");
  }
  const workerFirst = workerConfig.assets.run_worker_first;
  const rootFirst = workerFirst === true || (Array.isArray(workerFirst) && workerFirst.includes("/"));
  if (!rootFirst) {
    fatal(
      "Built worker config lost `assets.run_worker_first: [\"/\"]`, so legacy `/` query URLs " +
        "would be answered by the asset worker instead of the Worker entrypoint.",
    );
  }

  if (!existsSync(BUILT_CLIENT_DIR)) fatal(`Build did not emit ${BUILT_CLIENT_DIR}.`);
  const pages = htmlFiles(BUILT_CLIENT_DIR);
  const indexPath = join(BUILT_CLIENT_DIR, "index.html");
  if (!existsSync(indexPath)) fatal("Build did not prerender the feed index (/).");
  const indexHtml = readFileSync(indexPath, "utf8");
  if (indexHtml.length < 1024 || !indexHtml.includes("/posts/")) {
    fatal(
      `Prerendered ${relative(REPO_ROOT, indexPath)} looks empty (${indexHtml.length} bytes, ` +
        "no post links). The build did not read the restored corpus.",
    );
  }
  const tagPages = pages.filter((path) => relative(BUILT_CLIENT_DIR, path).startsWith("tag"));
  if (tagPages.length === 0) fatal("Build prerendered no tag pages.");
  const tagsIndex = join(BUILT_CLIENT_DIR, "tags", "index.html");
  if (!existsSync(tagsIndex)) fatal("Build did not prerender the /tags index.");

  const feedPages = pages.filter((path) => relative(BUILT_CLIENT_DIR, path).startsWith("page"));
  process.stdout.write(
    `Prerendered output: ${pages.length} HTML pages ` +
      `(${feedPages.length} feed pages, ${tagPages.length} tag pages).\n`,
  );
}

function main() {
  const options = parseArgs(process.argv.slice(2));

  if (process.env.WORKERS_CI) {
    fatal(
      [
        "Refusing to run inside Cloudflare Workers Builds (WORKERS_CI is set).",
        "",
        "Workers Builds runs a plain build with no D1 snapshot, so it would deploy a",
        "site with no prerendered content. Disconnect the Git integration for the",
        "`movies-that-feel-like` Worker (Workers & Pages -> the Worker -> Settings ->",
        "Builds: disable automatic deployments) and deploy from GitHub Actions",
        "(.github/workflows/deploy-production.yml).",
      ].join("\n"),
    );
  }

  if (!options.snapshot) fatal(`Missing required --snapshot.\n\n${USAGE}`);
  const snapshot = resolve(REPO_ROOT, options.snapshot);
  if (!existsSync(snapshot) || !statSync(snapshot).isFile()) {
    fatal(`Snapshot ${display(snapshot)} does not exist.`);
  }
  if (statSync(snapshot).size === 0) fatal(`Snapshot ${display(snapshot)} is empty.`);

  const db = options.db ?? process.env.D1_DATABASE_NAME ?? "movies-that-feel-like";
  const stateDir = resolveStateDir(options.stateDir);

  step(`Checking snapshot ${display(snapshot)}`);
  const snapshotSql = assertSnapshotIsDataOnly(snapshot);
  process.stdout.write(`Snapshot sha256: ${checksum(snapshot)}\n`);

  step(`Recreating isolated D1 state at ${display(stateDir)}`);
  rmSync(stateDir, { recursive: true, force: true });
  mkdirSync(stateDir, { recursive: true });
  wrangler(["d1", "migrations", "apply", db, "--local", "--persist-to", stateDir]);

  const triggers = captureTriggers(db, stateDir);
  const triggerCount = queryNumber(
    db,
    stateDir,
    "SELECT COUNT(*) AS n FROM sqlite_master WHERE type = 'trigger'",
  );
  if (triggerCount !== triggers.length) {
    fatal(`Captured ${triggers.length} of ${triggerCount} triggers; aborting before the import.`);
  }

  const dumpCarriesMigrationLedger = /(^|\n)INSERT\s+INTO\s+["`[]?d1_migrations\b/i.test(snapshotSql);

  step("Dropping summary triggers for the import");
  if (triggers.length > 0) {
    const drops = triggers
      .map((trigger) => `DROP TRIGGER "${trigger.name.replace(/"/g, '""')}";`)
      .join(" ");
    wrangler(["d1", "execute", db, "--local", "--persist-to", stateDir, "--command", drops]);
  }

  step("Clearing seeded application data before the import");
  clearApplicationData(db, stateDir, dumpCarriesMigrationLedger);

  step(`Importing ${display(snapshot)}`);
  wrangler(["d1", "execute", db, "--local", "--persist-to", stateDir, "--file", snapshot]);

  step("Recreating summary triggers");
  if (triggers.length > 0) {
    const triggersFile = join(stateDir, "summary-triggers.sql");
    writeFileSync(triggersFile, `${triggers.map((trigger) => trigger.sql).join("\n")}\n`);
    wrangler(["d1", "execute", db, "--local", "--persist-to", stateDir, "--file", triggersFile]);
  }

  step("Verifying the restored corpus");
  verifyRestoredCorpus(db, stateDir, triggers);

  const tracked = readdirSync(join(REPO_ROOT, "packages", "db", "migrations"))
    .filter((name) => name.endsWith(".sql"))
    .sort();
  const applied = query(db, stateDir, "SELECT name FROM d1_migrations ORDER BY name")
    .map((row) => String(row.name))
    .sort();
  if (applied.join("\n") !== tracked.join("\n")) {
    fatal(
      [
        "The restored migration ledger does not match the migrations in the repository.",
        `Applied (${applied.length}): ${applied.join(", ") || "<none>"}`,
        `Tracked (${tracked.length}): ${tracked.join(", ")}`,
        "",
        "A snapshot taken from the production database carries production's ledger; if it",
        "is behind the repository, apply the migrations before exporting. A snapshot taken",
        "from a local database carries that database's ledger, so migrate it first with",
        "`npm run db:migrate`.",
      ].join("\n"),
    );
  }

  step("Building Astro against the restored database");
  run("npm", ["run", "build", "-w", "apps/astro"], {
    env: { BUILD_D1_STATE_DIR: stateDir },
  });

  step("Verifying the build output");
  verifyBuildOutput();

  process.stdout.write(
    [
      "",
      "Production build ready.",
      `  snapshot: ${display(snapshot)}`,
      `  state:    ${display(stateDir)}`,
      `  deploy:   npx wrangler deploy --config ${relative(REPO_ROOT, BUILT_WRANGLER_CONFIG)}`,
      "",
    ].join("\n"),
  );
}

main();
