// packages/db/schema.ts
import {
  sqliteTable,
  text,
  integer,
  real,
  index,
  uniqueIndex,
  check,
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
    // Derived invariant, owned by the database: true iff the post owns at
    // least one image with a NULL `deleted_at`. Independent of `status`, so a
    // publishable post whose only image was probed dead is not displayable.
    // Triggers on imported_post_images keep it exact; a seed never refreshes it
    // (D1 owns the liveness knowledge).
    isDisplayable: integer("is_displayable", { mode: "boolean" })
      .notNull()
      .default(false),
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
    // Feed and tag pages page over exactly this ordering, filtered by
    // status = 'publishable' AND is_displayable = 1.
    index("idx_imported_vibe_posts_feed").on(
      table.status,
      table.isDisplayable,
      table.createdUtc.desc(),
      table.id.desc()
    ),
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
    sourceUrl: text("source_url").notNull(),
    previewUrl: text("preview_url"),
    width: integer("width"),
    height: integer("height"),
    sortOrder: integer("sort_order").notNull().default(0),
    createdAt: text("created_at")
      .notNull()
      .default(sql`(datetime('now'))`),
    // Set when a reachability probe positively identified Reddit's deleted-image
    // placeholder. NULL means "not known to be deleted".
    deletedAt: text("deleted_at"),
    // Last successful probe; drives the periodic re-check schedule.
    checkedAt: text("checked_at"),
  },
  (table) => [
    index("idx_imported_post_images_post").on(table.importedVibePostId),
    uniqueIndex("idx_imported_post_images_post_source").on(
      table.importedVibePostId,
      table.sourceUrl
    ),
    index("idx_imported_post_images_liveness").on(
      table.importedVibePostId,
      table.deletedAt
    ),
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
    // Natural keys: the loader finds movie/tv rows by tmdb_id and games by
    // igdb_id, both scoped by media_type. Seeds resolve parents through these.
    uniqueIndex("idx_recommendations_media_tmdb")
      .on(table.mediaType, table.tmdbId)
      .where(sql`tmdb_id IS NOT NULL`),
    uniqueIndex("idx_recommendations_media_igdb")
      .on(table.mediaType, table.igdbId)
      .where(sql`igdb_id IS NOT NULL`),
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
    index("idx_vibe_tags_tag").on(table.tag),
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

// ── enrichment_resolution_cache ───────────────────────────────

export const enrichmentResolutionCache = sqliteTable(
  "enrichment_resolution_cache",
  {
    id: integer("id").primaryKey({ autoIncrement: true }),
    provider: text("provider").notNull(),
    candidateKey: text("candidate_key").notNull(),
    candidateKeyVersion: integer("candidate_key_version").notNull().default(1),
    queryTitle: text("query_title").notNull(),
    queryYear: integer("query_year"),
    queryMediaType: text("query_media_type")
      .notNull()
      .$type<"movie" | "tv" | "game">(),
    language: text("language").notNull().default("en-US"),
    includeAdult: integer("include_adult", { mode: "boolean" })
      .notNull()
      .default(false),
    resolverVersion: text("resolver_version").notNull(),
    outcome: text("outcome")
      .notNull()
      .$type<"matched" | "not_found">(),
    providerRecordId: text("provider_record_id"),
    resolvedType: text("resolved_type").$type<"movie" | "tv" | "game">(),
    resolvedTitle: text("resolved_title"),
    resolvedYear: integer("resolved_year"),
    normalizedPayload: text("normalized_payload"),
    fetchedAt: text("fetched_at").notNull(),
    freshUntil: text("fresh_until").notNull(),
    sourceRunId: integer("source_run_id").references(() => processingRuns.id, {
      onDelete: "set null",
    }),
    sourceArtifactChecksum: text("source_artifact_checksum"),
    payloadSchemaVersion: integer("payload_schema_version")
      .notNull()
      .default(1),
  },
  (table) => [
    index("idx_enrichment_resolution_cache_lookup_newest").on(
      table.provider,
      table.candidateKey,
      table.candidateKeyVersion,
      table.queryTitle,
      table.queryYear,
      table.queryMediaType,
      table.language,
      table.includeAdult,
      table.resolverVersion,
      table.fetchedAt.desc(),
      table.id.desc()
    ),
  ]
);

// ── extraction_result_cache ───────────────────────────────────

export const extractionResultCache = sqliteTable(
  "extraction_result_cache",
  {
    id: integer("id").primaryKey({ autoIncrement: true }),
    cacheKey: text("cache_key").notNull(),
    redditPostId: text("reddit_post_id").notNull(),
    contentHash: text("content_hash").notNull(),
    promptHash: text("prompt_hash").notNull(),
    promptVersion: text("prompt_version").notNull(),
    provider: text("provider").notNull(),
    model: text("model").notNull(),
    apiBase: text("api_base"),
    instructorMode: text("instructor_mode")
      .notNull()
      .$type<"auto" | "json" | "md_json" | "tools">(),
    extractorVersion: text("extractor_version").notNull(),
    payloadSchemaVersion: text("payload_schema_version").notNull(),
    outcome: text("outcome")
      .notNull()
      .$type<"extracted" | "no_result">(),
    extractionPayload: text("extraction_payload"),
    sourceNormalizedChecksum: text("source_normalized_checksum").notNull(),
    createdAt: text("created_at")
      .notNull()
      .default(sql`(datetime('now'))`),
    freshUntil: text("fresh_until").notNull(),
  },
  (table) => [
    check(
      "extraction_result_cache_payload_is_json",
      sql`${table.extractionPayload} IS NULL OR json_valid(${table.extractionPayload})`
    ),
    check(
      "extraction_result_cache_outcome_payload_match",
      sql`(
        (${table.outcome} = 'extracted' AND ${table.extractionPayload} IS NOT NULL AND json_valid(${table.extractionPayload}))
        OR
        (${table.outcome} = 'no_result' AND ${table.extractionPayload} IS NULL)
      )`
    ),
    index("idx_extraction_result_cache_lookup_newest").on(
      table.cacheKey,
      table.createdAt.desc(),
      table.id.desc()
    ),
  ]
);

// ── tag_counts ───────────────────────────────────────────────
//
// Materialized per-tag count of publishable, displayable posts. One row per
// tag in the corpus vocabulary (including tags whose count is currently 0 —
// readers filter `count > 0`). Maintained incrementally by database triggers
// on imported_vibe_posts / imported_post_images / vibe_tags, so every writer
// (pipeline stage, seed migration, direct SQL) lands the same values.
//
// `slug` is a deterministic internal key retained in the summary. Public URLs
// encode the original tag name directly, so ordinary tags remain readable
// while names with punctuation stay safe.

export const tagCounts = sqliteTable(
  "tag_counts",
  {
    tag: text("tag").primaryKey(),
    slug: text("slug").notNull(),
    count: integer("count").notNull().default(0),
  },
  (table) => [uniqueIndex("idx_tag_counts_slug").on(table.slug)]
);

// ── site_stats ───────────────────────────────────────────────
//
// Singleton row (`id = 1`) holding corpus-wide counters. Same maintenance
// contract as tag_counts: triggers own it, readers must not trust a missing
// row (a deleted singleton is repaired by a trigger on this table).

export const siteStats = sqliteTable(
  "site_stats",
  {
    id: integer("id").primaryKey(),
    postCount: integer("post_count").notNull().default(0),
  },
  (table) => [check("site_stats_singleton", sql`${table.id} = 1`)]
);
