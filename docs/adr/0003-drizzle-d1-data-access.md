# Drizzle D1 data-access design

## Decision

We will introduce Drizzle ORM (`drizzle-orm/d1`) as the typed query layer for the Astro SSR app, replacing the raw SQL helpers in `apps/astro/src/lib/db.ts`. The Drizzle schema will be a hand-mirrored typed reflection of the authoritative SQL migrations in `packages/db/migrations/`, living in `packages/db/schema.ts`. No Drizzle Kit migrations — Wrangler remains the sole migration executor. A validation script in `packages/db` asserts at CI time that every column in the migration files has a corresponding Drizzle column definition, catching drift before deploy.

The subrequest-budget problem in `getPublishedPosts` (currently 1 + N×3 D1 subrequests, exceeding the free-tier 50-subrequest limit at N=20) will be solved by restructuring to 4 flat queries plus in-memory grouping — a pattern that Drizzle's typed query builder makes straightforward and that holds at 4 subrequests regardless of post count.

## Context

The site runs Astro 7 SSR on Cloudflare Workers with `output: "server"` and `@astrojs/cloudflare` v14. The D1 binding is accessed via `import { env } from "cloudflare:workers"` — the `Astro.locals.runtime` path was removed in Astro 6. Three pages (`index.astro`, `posts/[id].astro`, `recommendations/[id].astro`) and two prerender helpers (`getAllRecommendationIds`, `getAllPostIds`) consume the 10-function public API in `apps/astro/src/lib/db.ts`.

The Wayfinder map (#22) requires Drizzle ORM for typed queries but explicitly prohibits Drizzle Kit migrations. The SQL files in `packages/db/migrations/0001_initial.sql` through `0004_drop_tmdb_data.sql` are the source of truth for the schema. The Drizzle schema is a typed mirror, not a replacement — it exists to give us type-safe query building at the application layer while migrations remain plain SQL executed by Wrangler.

What's at stake: the current `getPublishedPosts` issues one query per post for images, tags, and recommendations (1 + N×3 subrequests). On the Cloudflare Workers free tier, each HTTP request gets 50 subrequests. At N=20 posts the page already exceeds budget (61 subrequests). The Drizzle migration is the natural moment to restructure these queries into a batched pattern that stays within budget at any realistic post count.

## Driver and binding

Runtime code uses `drizzle-orm/d1` exclusively:

```ts
import { drizzle } from "drizzle-orm/d1";
import { env } from "cloudflare:workers";

export function getDb() {
  return drizzle(env.DB);
}
```

The `d1-http` driver is prohibited at runtime. It uses REST + API tokens and exists for Drizzle Kit CLI operations only. Importing it in Worker code would add unnecessary latency and a token-management surface that D1 bindings eliminate. The binding `env.DB` comes from the `d1_databases` array in `wrangler.jsonc` and is already configured.

Each call site currently does `const db = env.DB` and passes the raw `D1Database` to query functions. The new pattern exports `getDb()` which returns a `drizzle(env.DB)` instance. Call sites change from `getPublishedPosts(env.DB)` to `getPublishedPosts(getDb())`. The `getDb()` function is cheap — `drizzle()` is a lightweight wrapper, not a connection pool.

## Module layout

```
packages/db/
├── migrations/
│   ├── 0001_initial.sql
│   ├── 0002_evidence_scores.sql
│   ├── 0003_games.sql
│   └── 0004_drop_tmdb_data.sql
├── schema.ts              ← Drizzle schema (typed mirror of migrations)
├── validate-schema.ts     ← PRAGMA-based drift detection test
├── package.json           ← adds drizzle-orm dependency
└── README.md

apps/astro/src/lib/
└── db/
    ├── index.ts           ← public API (10 exported functions)
    └── queries.ts         ← internal query implementations
```

The Drizzle schema lives in `packages/db/schema.ts` rather than `apps/astro/src/lib/db/` for three reasons: (1) `packages/db` already owns the database contract — the migration files live there and `wrangler.jsonc` points `migrations_dir` at it; colocating the typed mirror means the contract and its type representation are in one package. (2) The `validate-schema.ts` script naturally lives alongside both the schema it validates and the migrations it compares against. (3) Any future TypeScript consumer (admin tooling, edge functions, a typed pipeline wrapper) imports from the `db` workspace package without depending on the Astro app.

The Astro app's `db/index.ts` re-exports the 10 public functions with their current signatures. Internal query logic lives in `db/queries.ts` to keep the public surface clean. The call sites (`index.astro`, `posts/[id].astro`, `recommendations/[id].astro`) change only their import path (the function names and return types are preserved — see open question in §11 about camelCase vs snake_case).

## Drizzle schema

The full hand-mirrored schema for all 7 tables. Column names use camelCase in TypeScript with snake_case SQL aliases. CHECK constraints are expressed as `$type<Union>()`. Boolean integers use `mode: 'boolean'`. JSON-shaped TEXT uses `mode: 'json'`. All `datetime('now')` defaults use `default(sql`(datetime('now'))`)`.

```ts
// packages/db/schema.ts
import {
  sqliteTable,
  text,
  integer,
  real,
  index,
  uniqueIndex,
} from "drizzle-orm/sqlite-core";
import { sql } from "drizzle-orm";

// ── imported_vibe_posts ──────────────────────────────────────

export const importedVibePosts = sqliteTable(
  "imported_vibe_posts",
  {
    id: integer("id").primaryKey({ autoIncrement: true }),
    redditPostId: text("reddit_post_id").notNull(),
    title: text("title").notNull(),
    cleanedTitle: text("cleaned_title"),
    selftext: text("selftext"),
    author: text("author"),
    createdUtc: integer("created_utc").notNull(),
    permalink: text("permalink").notNull(),
    url: text("url"),
    subreddit: text("subreddit").notNull().default("MoviesThatFeelLike"),
    vibeSummary: text("vibe_summary"),
    status: text("status")
      .notNull()
      .default("pending")
      .$type<"pending" | "processing" | "publishable" | "failed" | "skipped">(),
    errorInfo: text("error_info"),
    processingRunId: integer("processing_run_id"),
    createdAt: text("created_at")
      .notNull()
      .default(sql`(datetime('now'))`),
    updatedAt: text("updated_at")
      .notNull()
      .default(sql`(datetime('now'))`),
  },
  (table) => [
    uniqueIndex("idx_imported_vibe_posts_reddit_id_unique").on(
      table.redditPostId
    ),
    index("idx_imported_vibe_posts_status").on(table.status),
    index("idx_imported_vibe_posts_created_utc").on(table.createdUtc),
    index("idx_imported_vibe_posts_reddit_id").on(table.redditPostId),
  ]
);

// ── imported_post_images ─────────────────────────────────────

export const importedPostImages = sqliteTable(
  "imported_post_images",
  {
    id: integer("id").primaryKey({ autoIncrement: true }),
    importedVibePostId: integer("imported_vibe_post_id")
      .notNull()
      .references(() => importedVibePosts.id, { onDelete: "cascade" }),
    url: text("url").notNull(),
    cacheKey: text("cache_key"),
    cacheStatus: text("cache_status")
      .notNull()
      .default("pending")
      .$type<"pending" | "cached" | "failed" | "fallback">(),
    width: integer("width"),
    height: integer("height"),
    remoteUrl: text("remote_url"),
    sortOrder: integer("sort_order").notNull().default(0),
    createdAt: text("created_at")
      .notNull()
      .default(sql`(datetime('now'))`),
  },
  (table) => [
    index("idx_imported_post_images_post").on(table.importedVibePostId),
  ]
);

// ── recommendations ──────────────────────────────────────────

export const recommendations = sqliteTable(
  "recommendations",
  {
    id: integer("id").primaryKey({ autoIncrement: true }),
    tmdbId: integer("tmdb_id"),
    imdbId: text("imdb_id"),
    igdbId: integer("igdb_id"),
    title: text("title").notNull(),
    originalTitle: text("original_title"),
    mediaType: text("media_type")
      .notNull()
      .default("movie")
      .$type<"movie" | "tv" | "game">(),
    releaseYear: integer("release_year"),
    posterUrl: text("poster_url"),
    backdropUrl: text("backdrop_url"),
    overview: text("overview"),
    externalUrl: text("external_url"),
    platforms: text("platforms", { mode: "json" }).$type<string[]>(),
    popularity: real("popularity"),
    voteAverage: real("vote_average"),
    isAmbiguous: integer("is_ambiguous", { mode: "boolean" })
      .notNull()
      .default(false),
    evidenceScore: real("evidence_score").notNull().default(0),
    createdAt: text("created_at")
      .notNull()
      .default(sql`(datetime('now'))`),
    updatedAt: text("updated_at")
      .notNull()
      .default(sql`(datetime('now'))`),
  },
  (table) => [
    index("idx_recommendations_tmdb_id").on(table.tmdbId),
    index("idx_recommendations_igdb_id").on(table.igdbId),
    index("idx_recommendations_title").on(table.title),
    index("idx_recommendations_ambiguous").on(table.isAmbiguous),
  ]
);

// ── recommendation_evidence ──────────────────────────────────

export const recommendationEvidence = sqliteTable(
  "recommendation_evidence",
  {
    id: integer("id").primaryKey({ autoIncrement: true }),
    recommendationId: integer("recommendation_id")
      .notNull()
      .references(() => recommendations.id, { onDelete: "cascade" }),
    importedVibePostId: integer("imported_vibe_post_id")
      .notNull()
      .references(() => importedVibePosts.id, { onDelete: "cascade" }),
    evidenceCommentId: text("evidence_comment_id"),
    extractedText: text("extracted_text"),
    confidence: real("confidence"),
    isPrimary: integer("is_primary", { mode: "boolean" })
      .notNull()
      .default(false),
    evidenceCommentScore: integer("evidence_comment_score"),
    createdAt: text("created_at")
      .notNull()
      .default(sql`(datetime('now'))`),
  },
  (table) => [
    uniqueIndex("idx_recommendation_evidence_unique").on(
      table.recommendationId,
      table.importedVibePostId,
      table.evidenceCommentId
    ),
    index("idx_recommendation_evidence_rec").on(table.recommendationId),
    index("idx_recommendation_evidence_post").on(table.importedVibePostId),
  ]
);

// ── vibe_tags ────────────────────────────────────────────────

export const vibeTags = sqliteTable(
  "vibe_tags",
  {
    id: integer("id").primaryKey({ autoIncrement: true }),
    importedVibePostId: integer("imported_vibe_post_id")
      .notNull()
      .references(() => importedVibePosts.id, { onDelete: "cascade" }),
    tag: text("tag").notNull(),
    source: text("source")
      .notNull()
      .default("extraction")
      .$type<"extraction" | "manual" | "generated">(),
    createdAt: text("created_at")
      .notNull()
      .default(sql`(datetime('now'))`),
  },
  (table) => [
    uniqueIndex("idx_vibe_tags_post_tag").on(
      table.importedVibePostId,
      table.tag
    ),
    index("idx_vibe_tags_post").on(table.importedVibePostId),
  ]
);

// ── processing_runs ──────────────────────────────────────────

export const processingRuns = sqliteTable(
  "processing_runs",
  {
    id: integer("id").primaryKey({ autoIncrement: true }),
    stage: text("stage")
      .notNull()
      .$type<"fetch" | "cache-assets" | "extract" | "enrich" | "load" | "inspect">(),
    status: text("status")
      .notNull()
      .default("running")
      .$type<"running" | "completed" | "failed">(),
    startedAt: text("started_at")
      .notNull()
      .default(sql`(datetime('now'))`),
    finishedAt: text("finished_at"),
    summary: text("summary"),
    errorInfo: text("error_info"),
  },
  (table) => [
    index("idx_processing_runs_stage").on(table.stage),
    index("idx_processing_runs_status").on(table.status),
  ]
);

// ── pipeline_artifacts ───────────────────────────────────────

export const pipelineArtifacts = sqliteTable(
  "pipeline_artifacts",
  {
    id: integer("id").primaryKey({ autoIncrement: true }),
    processingRunId: integer("processing_run_id").references(
      () => processingRuns.id,
      { onDelete: "set null" }
    ),
    importedVibePostId: integer("imported_vibe_post_id").references(
      () => importedVibePosts.id,
      { onDelete: "set null" }
    ),
    stage: text("stage").notNull(),
    storageKey: text("storage_key").notNull(),
    contentType: text("content_type"),
    sizeBytes: integer("size_bytes"),
    checksum: text("checksum"),
    metadata: text("metadata"),
    createdAt: text("created_at")
      .notNull()
      .default(sql`(datetime('now'))`),
  },
  (table) => [
    index("idx_pipeline_artifacts_run").on(table.processingRunId),
    index("idx_pipeline_artifacts_post").on(table.importedVibePostId),
  ]
);
```

## Query API mapping

Each of the 10 current exported functions, its Drizzle query plan, and its classification.

| # | Function | Classification | Drizzle query plan |
|---|----------|----------------|--------------------|
| 1 | `getPublishedPosts(db)` | **typed** (restructured) | See subrequest budget plan below — 4 queries + JS grouping. No longer 1+N×3. |
| 2 | `getPostByRedditId(db, redditId)` | **typed** | Q1: `db.select().from(importedVibePosts).where(eq(redditPostId, id).and(eq(status, 'publishable'))).limit(1)` then Q2–Q4 same as batched pattern but with single post ID. 4 subrequests total. |
| 3 | `getRecommendationsForPost(db, postId)` | **typed** | `db.select({ ...recommendations, evidenceCommentId }).from(recommendations).innerJoin(recommendationEvidence, eq(...)).where(eq(recommendationEvidence.importedVibePostId, postId)).groupBy(recommendations.id).orderBy(desc(evidenceScore), desc(popularity))` — 1 subrequest. |
| 4 | `getImagesForPost(db, postId)` | **typed** | `db.select().from(importedPostImages).where(eq(importedVibePostId, postId)).orderBy(asc(sortOrder))` — 1 subrequest. |
| 5 | `getTagsForPost(db, postId)` | **typed** | `db.select().from(vibeTags).where(eq(importedVibePostId, postId))` — 1 subrequest. |
| 6 | `getRecommendationById(db, id)` | **typed** | `db.select().from(recommendations).where(eq(recommendations.id, id)).limit(1)` — 1 subrequest. |
| 7 | `getPostsForRecommendation(db, recId)` | **typed** | `db.select({ ...importedVibePosts, evidenceCommentId, extractedText }).from(importedVibePosts).innerJoin(recommendationEvidence, eq(...)).where(and(eq(recommendationEvidence.recommendationId, recId), eq(status, 'publishable'))).orderBy(desc(createdUtc))` — 1 subrequest. |
| 8 | `getAllRecommendationIds(db)` | **typed** | `db.selectDistinct({ id: recommendations.id }).from(recommendations).innerJoin(recommendationEvidence, eq(...)).innerJoin(importedVibePosts, eq(...)).where(eq(status, 'publishable')).orderBy(asc(recommendations.id))` — 1 subrequest. |
| 9 | `getAllPostIds(db)` | **typed** | `db.select({ redditPostId }).from(importedVibePosts).where(eq(status, 'publishable')).orderBy(desc(createdUtc))` — 1 subrequest. |
| 10 | `getPostCount(db)` | **typed** | `db.select({ cnt: count() }).from(importedVibePosts).where(eq(status, 'publishable'))` then return `result[0].cnt` — 1 subrequest. |

All 10 functions have pure Drizzle implementations. No raw SQL escape hatches are needed for the current query set. The `GROUP BY` in `getRecommendationsForPost` (#3) is the most complex Drizzle expression but is fully supported by the query builder's `.groupBy()` clause with column references.

The `platforms` column on `recommendations` uses `{ mode: 'json' }` so Drizzle auto-parses the JSON text to `string[]`. This eliminates the manual `JSON.parse` in `recommendations/[id].astro` (lines 24–31) — the typed return already has `platforms: string[] | null`.

## Subrequest budget plan

The current `getPublishedPosts` fetches all publishable posts, then for each post issues 3 parallel queries (images, tags, recommendations). At N=20 posts, that's 1 + 60 = 61 subrequests, exceeding the free-tier 50-subrequest limit.

The restructured version issues exactly 4 D1 subrequests regardless of post count:

```ts
// apps/astro/src/lib/db/queries.ts

export async function getPublishedPosts(db: DrizzleD1Database) {
  // Q1: All publishable posts (1 subrequest)
  const posts = await db
    .select()
    .from(importedVibePosts)
    .where(eq(importedVibePosts.status, "publishable"))
    .orderBy(desc(importedVibePosts.createdUtc));

  if (posts.length === 0) return [];

  const postIds = posts.map((p) => p.id);

  // Q2–Q4: All related data for those post IDs (3 subrequests)
  const [allImages, allTags, allRecs] = await Promise.all([
    db
      .select()
      .from(importedPostImages)
      .where(inArray(importedPostImages.importedVibePostId, postIds))
      .orderBy(asc(importedPostImages.sortOrder)),

    db
      .select()
      .from(vibeTags)
      .where(inArray(vibeTags.importedVibePostId, postIds)),

    db
      .select({
        id: recommendations.id,
        title: recommendations.title,
        tmdbId: recommendations.tmdbId,
        imdbId: recommendations.imdbId,
        igdbId: recommendations.igdbId,
        mediaType: recommendations.mediaType,
        releaseYear: recommendations.releaseYear,
        posterUrl: recommendations.posterUrl,
        backdropUrl: recommendations.backdropUrl,
        overview: recommendations.overview,
        externalUrl: recommendations.externalUrl,
        platforms: recommendations.platforms,
        popularity: recommendations.popularity,
        voteAverage: recommendations.voteAverage,
        evidenceScore: recommendations.evidenceScore,
        // from the join:
        importedVibePostId: recommendationEvidence.importedVibePostId,
        evidenceCommentId: recommendationEvidence.evidenceCommentId,
      })
      .from(recommendations)
      .innerJoin(
        recommendationEvidence,
        eq(recommendationEvidence.recommendationId, recommendations.id)
      )
      .where(inArray(recommendationEvidence.importedVibePostId, postIds))
      .orderBy(
        desc(recommendations.evidenceScore),
        desc(recommendations.popularity)
      ),
  ]);

  // JS-side grouping (no additional subrequests)
  const imagesByPost = groupBy(allImages, (i) => i.importedVibePostId);
  const tagsByPost = groupBy(allTags, (t) => t.importedVibePostId);
  const recsByPost = groupBy(allRecs, (r) => r.importedVibePostId);

  return posts.map((post) => ({
    ...post,
    images: imagesByPost.get(post.id) ?? [],
    tags: tagsByPost.get(post.id) ?? [],
    recommendations: deduplicateRecs(recsByPost.get(post.id) ?? []),
  }));
}
```

The `deduplicateRecs` helper handles the fact that the old SQL used `GROUP BY r.id` to collapse multiple evidence rows per recommendation-post pair. In the batched version, we fetch all evidence rows and deduplicate in JS, keeping the first row per `recommendation.id` (which is already sorted by `evidenceScore DESC, popularity DESC`):

```ts
function deduplicateRecs(rows: RecWithPostId[]) {
  const seen = new Map<number, RecWithPostId>();
  for (const row of rows) {
    if (!seen.has(row.id)) seen.set(row.id, row);
  }
  return [...seen.values()].map(({ importedVibePostId, ...rec }) => rec);
}
```

**Subrequest counts:**

| Function | Before | After |
|----------|--------|-------|
| `getPublishedPosts` | 1 + N×3 | 4 |
| `getPostByRedditId` | 4 | 4 |
| `getRecommendationsForPost` | 1 | 1 |
| `getImagesForPost` | 1 | 1 |
| `getTagsForPost` | 1 | 1 |
| `getRecommendationById` | 1 | 1 |
| `getPostsForRecommendation` | 1 | 1 |
| `getAllRecommendationIds` | 1 | 1 |
| `getAllPostIds` | 1 | 1 |
| `getPostCount` | 1 | 1 |

The index page (`index.astro`) calls `getPostCount` + `getPublishedPosts` = 1 + 4 = **5 subrequests** total. Well within the 50-subrequest free tier budget, even at N=100+ posts.

**D1 IN-list limit caveat:** SQLite's `SQLITE_MAX_VARIABLE_NUMBER` on D1 defaults to 100. If `postIds.length > 100`, the `IN (?, ?, ...)` clause will fail. The implementation must chunk `postIds` into groups of 99 and issue multiple queries, merging results in JS. At the current post count (~20-50), this is not triggered, but the implementation should handle it defensively:

```ts
function chunk<T>(arr: T[], size: number): T[][] {
  const out: T[][] = [];
  for (let i = 0; i < arr.length; i += size) out.push(arr.slice(i, i + size));
  return out;
}

// In getPublishedPosts:
const chunks = chunk(postIds, 99);
const allImages = (
  await Promise.all(
    chunks.map((ids) =>
      db.select().from(importedPostImages)
        .where(inArray(importedPostImages.importedVibePostId, ids))
        .orderBy(asc(importedPostImages.sortOrder))
    )
  )
).flat();
```

This adds subrequests proportional to `ceil(postCount / 99)` — for 200 posts, 3 extra image queries + 3 tag queries + 3 rec queries = 13 total, still well within budget.

## Schema synchronization mechanism

The Drizzle schema in `packages/db/schema.ts` is hand-mirrored from the SQL migrations. Drift (someone adds a column to a migration but forgets to update the schema, or vice versa) must be caught before deploy. The mechanism is a validation script that runs `PRAGMA table_info` against a local D1 instance and compares against the expected columns derived from the Drizzle schema.

**File:** `packages/db/validate-schema.ts`

**Where it runs:** As part of `npm run check` (root `package.json`), which currently delegates to `astro check`. A new root script:

```json
"check": "npm run validate-schema -w packages/db && npm run check -w apps/astro"
```

Also runs in CI on every PR.

**What it asserts:** For each table defined in `schema.ts`, every column in the Drizzle definition must exist in `PRAGMA table_info('table_name')` output, and every column in `PRAGMA table_info` must exist in the Drizzle definition. Bidirectional check catches both "forgot to add to schema" and "schema has a column the migration doesn't create."

**Script outline:**

```ts
// packages/db/validate-schema.ts
import { drizzle } from "drizzle-orm/d1";
import { sql } from "drizzle-orm";
import * as schema from "./schema";

// Requires a local D1 with migrations applied (wrangler d1 migrations apply --local).
// Connects via miniflare or wrangler local D1 binding.

const TABLES = {
  imported_vibe_posts: schema.importedVibePosts,
  imported_post_images: schema.importedPostImages,
  recommendations: schema.recommendations,
  recommendation_evidence: schema.recommendationEvidence,
  vibe_tags: schema.vibeTags,
  processing_runs: schema.processingRuns,
  pipeline_artifacts: schema.pipelineArtifacts,
} as const;

async function validateTable(
  db: ReturnType<typeof drizzle>,
  tableName: string,
  tableDef: any
) {
  const pragmaRows = await db.all(sql.raw(`PRAGMA table_info('${tableName}')`));
  const dbColumns = new Set(pragmaRows.map((r: any) => r.name as string));
  const schemaColumns = new Set(
    Object.values(tableDef[Symbol.for("drizzle:columns")]).map(
      (c: any) => c.name
    )
  );

  const missingInSchema = [...dbColumns].filter((c) => !schemaColumns.has(c));
  const missingInDb = [...schemaColumns].filter((c) => !dbColumns.has(c));

  if (missingInSchema.length || missingInDb.length) {
    console.error(`❌ Drift detected in ${tableName}:`);
    if (missingInSchema.length)
      console.error(
        `   In DB but not in schema: ${missingInSchema.join(", ")}`
      );
    if (missingInDb.length)
      console.error(
        `   In schema but not in DB: ${missingInDb.join(", ")}`
      );
    process.exit(1);
  }
  console.log(`✅ ${tableName}: ${dbColumns.size} columns match`);
}

// Entry point: iterate all tables, exit 1 on any drift.
```

**What fails when someone adds a column to a migration without updating the mirror:** The `missingInSchema` array is non-empty, the script prints the offending column names and table, and exits with code 1. CI blocks the PR. The fix is to add the corresponding Drizzle column definition to `schema.ts`.

**Practical consideration:** The script needs a D1 binding. For CI, this means running `wrangler d1 migrations apply --local` first (which needs a local D1/Miniflare instance) and then connecting via the `d1` driver. An alternative is to parse the migration SQL files directly for `CREATE TABLE` and `ALTER TABLE ADD COLUMN` statements — this avoids the D1 runtime dependency but is more fragile. The PRAGMA approach is more reliable because it checks the actual schema SQLite sees, including defaults and constraints applied through table-recreate migrations (like 0003).

## Out of scope / non-goals

- **Drizzle Kit migrations.** Wrangler + raw SQL files remain the sole migration mechanism. `drizzle-kit` is not a dependency and `drizzle.config.ts` is not created.
- **`db.transaction()` API.** D1 does not support SQL `BEGIN/COMMIT`; calling `db.transaction()` throws (drizzle-orm issues #2463, #4212). Multi-statement atomicity uses `db.batch()` when needed. The current query set is read-only and doesn't need batched writes.
- **Session/auth middleware.** The D1 binding is accessed directly via `env.DB`; there is no per-user data isolation.
- **Write-path Drizzle queries.** The Python pipeline writes to D1 via its own SQL. This design only covers the read path in the Astro app.
- **Drizzle prepared statements (`.prepare('name')`) for v1.** Worth adding later for hot paths (`getPublishedPosts`, `getPostByRedditId`) once the query shapes stabilize. D1's prepared-statement caching is client-side only — no query plan reuse across requests — so the benefit is marginal and can be deferred.
- **`RETURNING` clause.** Works on D1 since mid-2024 but is unneeded for the current read-only query set.
- **Bundle size optimization.** `drizzle-orm` adds ~30KB gzip. Acceptable for the Worker bundle; tree-shaking via ESM imports keeps the actual footprint to the `d1` driver + `sqlite-core` subset.

## Acceptance criteria for #23

- **All 10 public functions have typed Drizzle implementations** in `apps/astro/src/lib/db/index.ts` with function signatures (name, parameters, return type shape) preserving the current `db.ts` contract. Call sites in the 3 Astro pages require no changes beyond import-path adjustments (and the camelCase decision in §11).
- **`getPublishedPosts` issues ≤4 D1 subrequests** regardless of post count. The IN-list chunking for >99 post IDs is implemented and tested.
- **`packages/db/schema.ts` defines all 7 tables** with snake_case column aliases, `$type<>` CHECK unions, `mode: 'boolean'` for boolean integers, `mode: 'json'` for the `platforms` column, and all indexes/unique indexes matching the migration files 0001–0004.
- **`packages/db/validate-schema.ts`** exists, runs as part of `npm run check`, and exits non-zero when a column in the migrations is missing from the Drizzle schema or vice versa. CI blocks PRs with schema drift.
- **No `drizzle-kit` dependency** in any `package.json`. No `drizzle.config.ts`. The only Drizzle imports are `drizzle-orm/d1` and `drizzle-orm/sqlite-core`.
- **The `d1-http` driver is not imported** anywhere in runtime code. A grep for `d1-http` in `apps/` and `packages/` returns zero results.

## Open questions for #24 and #25

- **Rollout strategy (#24):** Should the migration from raw SQL to Drizzle be a single PR replacing all 10 functions, or incremental (one function per PR with a feature flag)? Single PR is simpler given the small surface area, but incremental allows validating subrequest counts per-function in production preview deployments.
- **Return type shapes (#24):** The current `getPublishedPosts` returns `{ ...post, images, tags, recommendations }` with snake_case field names (because the raw SQL returns snake_case). The Drizzle schema uses camelCase TypeScript properties with snake_case SQL aliases; Drizzle's return type will naturally be camelCase. Either the call sites must be updated to use camelCase (`.redditPostId` instead of `.reddit_post_id`), or a mapping layer must convert back. The call sites in `index.astro` (line 90: `post.reddit_post_id`), `posts/[id].astro` (line 169: `post.reddit_post_id`), and `recommendations/[id].astro` (line 169: `post.reddit_post_id`) all use snake_case. **Recommended: update all call sites to camelCase** — matches Drizzle's native output and removes a redundant translation layer.
- **`platforms` JSON parsing (#24):** With `{ mode: 'json' }`, Drizzle returns `platforms: string[] | null` directly. The manual `JSON.parse` in `recommendations/[id].astro` (lines 24–31) becomes dead code. Confirm this can be removed without affecting any other consumer.
- **Prepared statement caching (#25):** Once the Drizzle queries are stable, should hot-path functions (`getPublishedPosts`, `getPostByRedditId`) use Drizzle's `.prepare('name')` for prepared-statement caching? The benefit on D1 is limited (client-side caching only, no cross-request plan reuse) and adds naming overhead. Defer until profiling shows query parsing as a measurable cost.
- **Pipeline type sharing (#25):** The Python pipeline (`apps/pipeline`) doesn't consume TypeScript types. If a future TypeScript pipeline stage or admin tool is planned, the `packages/db/schema.ts` types are ready. Should we add a note to `packages/db/README.md` documenting the schema as the canonical TypeScript type reference for the database?
- **Codebase preference note (#25):** Issue #25 tracks adding a "codebase preferences" note. This ADR establishes the precedent: Drizzle for all D1 reads, no raw SQL in new code unless the query cannot be expressed in the Drizzle query builder (and the escape hatch is documented in the function's JSDoc).
