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
