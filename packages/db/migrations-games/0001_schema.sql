-- Games That Feel Like: consolidated D1 schema baseline (MTFL-74).
--
-- Equal to the final schema produced by the schema (non-seed) migrations in
-- ../migrations/ (0001_initial .. 0193_request_path_indexes): same tables,
-- columns, constraints, indexes and triggers. No seed data except the
-- site_stats singleton row the triggers maintain.
--
-- Future schema changes must land in BOTH migration dirs (movies and games).

-- ---------------------------------------------------------------------------
-- Tables
-- ---------------------------------------------------------------------------

CREATE TABLE processing_runs (
    id              INTEGER PRIMARY KEY AUTOINCREMENT,
    stage           TEXT    NOT NULL
                    CHECK (stage IN ('fetch', 'cache-assets', 'extract', 'enrich', 'load', 'inspect')),
    status          TEXT    NOT NULL DEFAULT 'running'
                    CHECK (status IN ('running', 'completed', 'failed')),
    started_at      TEXT    NOT NULL DEFAULT (datetime('now')),
    finished_at     TEXT,
    summary         TEXT,                           -- JSON stats / notes
    error_info      TEXT
);

CREATE TABLE imported_vibe_posts (
    id              INTEGER PRIMARY KEY AUTOINCREMENT,
    reddit_post_id  TEXT    NOT NULL UNIQUE,
    title           TEXT    NOT NULL,
    cleaned_title   TEXT,
    selftext        TEXT,
    author          TEXT,
    created_utc     INTEGER NOT NULL,
    permalink       TEXT    NOT NULL,
    url             TEXT,
    subreddit       TEXT    NOT NULL DEFAULT 'MoviesThatFeelLike',

    -- Pipeline enrichment
    vibe_summary    TEXT,
    status          TEXT    NOT NULL DEFAULT 'pending'
                        CHECK (status IN ('pending', 'processing', 'publishable', 'failed', 'skipped')),
    error_info      TEXT,
    processing_run_id INTEGER,

    created_at      TEXT    NOT NULL DEFAULT (datetime('now')),
    updated_at      TEXT    NOT NULL DEFAULT (datetime('now')),

    -- Derived: 1 when the post has at least one live (non-deleted) image.
    -- Maintained by the imported_post_images_* triggers below.
    is_displayable  INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE imported_post_images (
    id                    INTEGER PRIMARY KEY AUTOINCREMENT,
    imported_vibe_post_id INTEGER NOT NULL
                          REFERENCES imported_vibe_posts(id) ON DELETE CASCADE,
    source_url            TEXT NOT NULL,
    preview_url           TEXT,
    width                 INTEGER,
    height                INTEGER,
    sort_order            INTEGER NOT NULL DEFAULT 0,
    created_at            TEXT NOT NULL DEFAULT (datetime('now')),
    deleted_at            TEXT,
    checked_at            TEXT
);

CREATE TABLE recommendations (
    id              INTEGER PRIMARY KEY AUTOINCREMENT,
    tmdb_id         INTEGER,
    imdb_id         TEXT,
    igdb_id         INTEGER,
    title           TEXT    NOT NULL,
    original_title  TEXT,
    media_type      TEXT    NOT NULL DEFAULT 'movie'
                        CHECK (media_type IN ('movie', 'tv', 'game')),
    release_year    INTEGER,
    poster_url      TEXT,
    backdrop_url    TEXT,
    overview        TEXT,
    external_url    TEXT,
    platforms       TEXT,
    popularity      REAL,
    vote_average    REAL,
    is_ambiguous    INTEGER NOT NULL DEFAULT 0,
    evidence_score  REAL    NOT NULL DEFAULT 0,
    created_at      TEXT    NOT NULL DEFAULT (datetime('now')),
    updated_at      TEXT    NOT NULL DEFAULT (datetime('now'))
);

CREATE TABLE recommendation_evidence (
    id                    INTEGER PRIMARY KEY AUTOINCREMENT,
    recommendation_id     INTEGER NOT NULL
                          REFERENCES recommendations(id) ON DELETE CASCADE,
    imported_vibe_post_id INTEGER NOT NULL
                          REFERENCES imported_vibe_posts(id) ON DELETE CASCADE,
    evidence_comment_id   TEXT,                      -- Reddit comment ID where mention was found
    extracted_text        TEXT,                      -- raw text that triggered the match
    confidence            REAL,                      -- extraction confidence score
    is_primary            INTEGER NOT NULL DEFAULT 0,

    created_at            TEXT NOT NULL DEFAULT (datetime('now')),
    evidence_comment_score INTEGER,

    UNIQUE(recommendation_id, imported_vibe_post_id, evidence_comment_id)
);

CREATE TABLE vibe_tags (
    id                    INTEGER PRIMARY KEY AUTOINCREMENT,
    imported_vibe_post_id INTEGER NOT NULL
                          REFERENCES imported_vibe_posts(id) ON DELETE CASCADE,
    tag                   TEXT    NOT NULL,
    source                TEXT    NOT NULL DEFAULT 'extraction'
                          CHECK (source IN ('extraction', 'manual', 'generated')),

    created_at            TEXT    NOT NULL DEFAULT (datetime('now')),
    UNIQUE(imported_vibe_post_id, tag)
);

CREATE TABLE pipeline_artifacts (
    id                INTEGER PRIMARY KEY AUTOINCREMENT,
    processing_run_id INTEGER
                      REFERENCES processing_runs(id) ON DELETE SET NULL,
    imported_vibe_post_id INTEGER
                      REFERENCES imported_vibe_posts(id) ON DELETE SET NULL,
    stage             TEXT    NOT NULL,
    storage_key       TEXT    NOT NULL,              -- R2 key or local file path
    content_type      TEXT,
    size_bytes        INTEGER,
    checksum          TEXT,
    metadata          TEXT,                          -- JSON

    created_at        TEXT    NOT NULL DEFAULT (datetime('now'))
);

CREATE TABLE enrichment_resolution_cache (
    id                         INTEGER PRIMARY KEY AUTOINCREMENT,

    -- Complete lookup identity
    provider                   TEXT    NOT NULL
                               CHECK (length(provider) BETWEEN 1 AND 64),
    candidate_key              TEXT    NOT NULL
                               CHECK (length(candidate_key) BETWEEN 1 AND 512),
    candidate_key_version      INTEGER NOT NULL DEFAULT 1
                               CHECK (candidate_key_version > 0),
    query_title                TEXT    NOT NULL
                               CHECK (length(query_title) BETWEEN 1 AND 512),
    query_year                 INTEGER
                               CHECK (query_year IS NULL OR query_year BETWEEN 1800 AND 3000),
    query_media_type           TEXT    NOT NULL
                               CHECK (query_media_type IN ('movie', 'tv', 'game')),
    language                   TEXT    NOT NULL DEFAULT 'en-US'
                               CHECK (length(language) BETWEEN 2 AND 35),
    include_adult              INTEGER NOT NULL DEFAULT 0
                               CHECK (include_adult IN (0, 1)),
    resolver_version           TEXT    NOT NULL
                               CHECK (length(resolver_version) BETWEEN 1 AND 64),

    -- Resolution outcome
    outcome                    TEXT    NOT NULL
                               CHECK (outcome IN ('matched', 'not_found')),
    provider_record_id         TEXT,
    resolved_type              TEXT
                               CHECK (resolved_type IS NULL OR resolved_type IN ('movie', 'tv', 'game')),
    resolved_title             TEXT,
    resolved_year              INTEGER
                               CHECK (resolved_year IS NULL OR resolved_year BETWEEN 1800 AND 3000),
    normalized_payload         TEXT
                               CHECK (normalized_payload IS NULL OR json_valid(normalized_payload)),

    -- Provenance and freshness
    fetched_at                 TEXT    NOT NULL,
    fresh_until                TEXT    NOT NULL,
    source_run_id              INTEGER
                               REFERENCES processing_runs(id) ON DELETE SET NULL,
    source_artifact_checksum   TEXT,
    payload_schema_version     INTEGER NOT NULL DEFAULT 1
                               CHECK (payload_schema_version > 0),

    -- A not-found result has no provider record or resolved fields; a match
    -- must carry the provider identity it resolved to.
    CHECK (
        (outcome = 'matched' AND provider_record_id IS NOT NULL AND resolved_type IS NOT NULL)
        OR
        (outcome = 'not_found' AND provider_record_id IS NULL AND resolved_type IS NULL)
    )
);

CREATE TABLE extraction_result_cache (
    id                         INTEGER PRIMARY KEY AUTOINCREMENT,

    -- Complete cache identity and extraction provenance.
    cache_key                  TEXT    NOT NULL
                               CHECK (length(cache_key) BETWEEN 1 AND 512),
    reddit_post_id             TEXT    NOT NULL
                               CHECK (length(reddit_post_id) BETWEEN 1 AND 128),
    content_hash               TEXT    NOT NULL
                               CHECK (length(content_hash) BETWEEN 1 AND 256),
    prompt_hash                TEXT    NOT NULL
                               CHECK (length(prompt_hash) BETWEEN 1 AND 256),
    prompt_version             TEXT    NOT NULL
                               CHECK (length(prompt_version) BETWEEN 1 AND 128),
    provider                   TEXT    NOT NULL
                               CHECK (length(provider) BETWEEN 1 AND 64),
    model                      TEXT    NOT NULL
                               CHECK (length(model) BETWEEN 1 AND 256),
    api_base                   TEXT
                               CHECK (api_base IS NULL OR length(api_base) BETWEEN 1 AND 2048),
    instructor_mode            TEXT    NOT NULL
                               CHECK (instructor_mode IN ('auto', 'json', 'md_json', 'tools')),
    extractor_version          TEXT    NOT NULL
                               CHECK (length(extractor_version) BETWEEN 1 AND 128),
    payload_schema_version     TEXT    NOT NULL
                               CHECK (length(payload_schema_version) BETWEEN 1 AND 128),

    -- Result payload. A no-result row is deliberately payload-free.
    outcome                    TEXT    NOT NULL
                               CHECK (outcome IN ('extracted', 'no_result')),
    extraction_payload         TEXT
                               CHECK (extraction_payload IS NULL OR json_valid(extraction_payload)),

    -- Source provenance and freshness.
    source_normalized_checksum TEXT    NOT NULL
                               CHECK (length(source_normalized_checksum) BETWEEN 1 AND 256),
    created_at                 TEXT    NOT NULL DEFAULT (datetime('now')),
    fresh_until                TEXT    NOT NULL,

    CHECK (
        (outcome = 'extracted' AND extraction_payload IS NOT NULL AND json_valid(extraction_payload))
        OR
        (outcome = 'no_result' AND extraction_payload IS NULL)
    )
);

CREATE TABLE tag_counts (
    tag               TEXT PRIMARY KEY NOT NULL,
    slug              TEXT NOT NULL,
    "count"           INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE site_stats (
    id                INTEGER PRIMARY KEY NOT NULL
                      CONSTRAINT site_stats_singleton CHECK (id = 1),
    post_count        INTEGER NOT NULL DEFAULT 0
);


-- ---------------------------------------------------------------------------
-- Indexes
-- ---------------------------------------------------------------------------

CREATE INDEX idx_processing_runs_stage ON processing_runs(stage);

CREATE INDEX idx_processing_runs_status ON processing_runs(status);

CREATE INDEX idx_imported_vibe_posts_created_utc ON imported_vibe_posts(created_utc DESC);

CREATE INDEX idx_imported_vibe_posts_feed
  ON imported_vibe_posts(status, is_displayable, created_utc DESC, id DESC);

CREATE INDEX idx_imported_vibe_posts_reddit_id ON imported_vibe_posts(reddit_post_id);

CREATE INDEX idx_imported_vibe_posts_status ON imported_vibe_posts(status);

CREATE INDEX idx_imported_post_images_liveness
  ON imported_post_images(imported_vibe_post_id, deleted_at);

CREATE INDEX idx_imported_post_images_post
    ON imported_post_images(imported_vibe_post_id);

CREATE UNIQUE INDEX idx_imported_post_images_post_source
  ON imported_post_images(imported_vibe_post_id, source_url);

CREATE INDEX idx_recommendations_ambiguous  ON recommendations(is_ambiguous);

CREATE INDEX idx_recommendations_igdb_id    ON recommendations(igdb_id);

CREATE UNIQUE INDEX idx_recommendations_media_igdb
  ON recommendations(media_type, igdb_id) WHERE igdb_id IS NOT NULL;

CREATE UNIQUE INDEX idx_recommendations_media_tmdb
  ON recommendations(media_type, tmdb_id) WHERE tmdb_id IS NOT NULL;

CREATE INDEX idx_recommendations_title      ON recommendations(title);

CREATE INDEX idx_recommendations_tmdb_id    ON recommendations(tmdb_id);

CREATE INDEX idx_recommendation_evidence_post ON recommendation_evidence(imported_vibe_post_id);

CREATE INDEX idx_recommendation_evidence_rec ON recommendation_evidence(recommendation_id);

CREATE INDEX idx_vibe_tags_post ON vibe_tags(imported_vibe_post_id);

CREATE INDEX idx_vibe_tags_tag ON vibe_tags(tag);

CREATE INDEX idx_pipeline_artifacts_post ON pipeline_artifacts(imported_vibe_post_id);

CREATE INDEX idx_pipeline_artifacts_run ON pipeline_artifacts(processing_run_id);

CREATE INDEX idx_enrichment_resolution_cache_lookup_newest
    ON enrichment_resolution_cache (
        provider,
        candidate_key,
        candidate_key_version,
        query_title,
        query_year,
        query_media_type,
        language,
        include_adult,
        resolver_version,
        fetched_at DESC,
        id DESC
    );

CREATE INDEX idx_extraction_result_cache_lookup_newest
    ON extraction_result_cache (cache_key, created_at DESC, id DESC);

CREATE INDEX idx_tag_counts_rank
  ON tag_counts("count" DESC, tag);

CREATE UNIQUE INDEX idx_tag_counts_slug ON tag_counts(slug);


-- ---------------------------------------------------------------------------
-- Triggers: is_displayable, tag_counts and site_stats maintenance
-- ---------------------------------------------------------------------------

CREATE TRIGGER imported_vibe_posts_normalize_after_insert
AFTER INSERT ON imported_vibe_posts
BEGIN
    -- A row that did not exist a moment ago owns no images when foreign keys
    -- are enforced, so whatever is_displayable an inserter supplied is stale:
    -- a seed carries the run-local derivation while D1 owns the liveness
    -- truth. Two steps, in this order:
    --
    --   1. Count the row exactly as it arrived.
    --   2. Normalize the derived column. That update fires the
    --      publishability trigger below, which applies the raw → truth delta
    --      (including the tag recount, a no-op for a post with no tags yet).
    --
    -- The sum is the truth however the row arrived: the normalization is a
    -- no-op on the ordinary path, where the column was never set and the
    -- default 0 already equals the truth.
    UPDATE site_stats
       SET post_count = post_count
           + (CASE WHEN NEW.status = 'publishable' AND NEW.is_displayable = 1
                   THEN 1 ELSE 0 END)
     WHERE id = 1;

    UPDATE imported_vibe_posts
       SET is_displayable = (
               SELECT CASE WHEN EXISTS (
                          SELECT 1
                            FROM imported_post_images i
                           WHERE i.imported_vibe_post_id = NEW.id
                             AND i.deleted_at IS NULL
                      )
                      THEN 1 ELSE 0 END
           )
     WHERE id = NEW.id;
END;


CREATE TRIGGER imported_vibe_posts_recount_after_publishability_change
AFTER UPDATE OF status, is_displayable ON imported_vibe_posts
WHEN (OLD.status = 'publishable' AND OLD.is_displayable = 1)
     <> (NEW.status = 'publishable' AND NEW.is_displayable = 1)
BEGIN
    -- Only this post's tags changed: recount each of them, upserting the
    -- vocabulary row in case it is missing, and leave the rest of the
    -- vocabulary untouched.
    INSERT INTO tag_counts (tag, slug, "count")
    SELECT t.tag,
           't-' || lower(hex(CAST(t.tag AS BLOB))),
           (
               SELECT COUNT(*)
                 FROM vibe_tags vt
                 JOIN imported_vibe_posts p ON p.id = vt.imported_vibe_post_id
                WHERE vt.tag = t.tag
                  AND p.status = 'publishable'
                  AND p.is_displayable = 1
           )
      FROM (SELECT DISTINCT tag FROM vibe_tags WHERE imported_vibe_post_id = NEW.id) AS t
    -- `WHERE 1` disambiguates the upsert: without a trailing WHERE clause
    -- SQLite's parser reads the ON as the start of a join constraint.
    WHERE 1
    ON CONFLICT(tag) DO UPDATE SET "count" = excluded."count";

    UPDATE site_stats
       SET post_count = post_count
           + (CASE WHEN NEW.status = 'publishable' AND NEW.is_displayable = 1
                   THEN 1 ELSE 0 END)
           - (CASE WHEN OLD.status = 'publishable' AND OLD.is_displayable = 1
                   THEN 1 ELSE 0 END)
     WHERE id = 1;
END;


CREATE TRIGGER imported_vibe_posts_recount_tags_before_delete
BEFORE DELETE ON imported_vibe_posts
BEGIN
    INSERT INTO tag_counts (tag, slug, "count")
    SELECT t.tag,
           't-' || lower(hex(CAST(t.tag AS BLOB))),
           (
               SELECT COUNT(*)
                 FROM vibe_tags vt
                 JOIN imported_vibe_posts p ON p.id = vt.imported_vibe_post_id
                WHERE vt.tag = t.tag
                  AND p.id <> OLD.id
                  AND p.status = 'publishable'
                  AND p.is_displayable = 1
           )
      FROM (SELECT DISTINCT tag FROM vibe_tags WHERE imported_vibe_post_id = OLD.id) AS t
    WHERE 1
    ON CONFLICT(tag) DO UPDATE SET "count" = excluded."count";
END;


CREATE TRIGGER imported_vibe_posts_stats_after_delete
AFTER DELETE ON imported_vibe_posts
WHEN OLD.status = 'publishable' AND OLD.is_displayable = 1
BEGIN
    UPDATE site_stats SET post_count = post_count - 1 WHERE id = 1;
END;


CREATE TRIGGER imported_post_images_refresh_displayable_after_delete
AFTER DELETE ON imported_post_images
BEGIN
    UPDATE imported_vibe_posts
       SET is_displayable = (
               SELECT CASE WHEN EXISTS (
                          SELECT 1
                            FROM imported_post_images i
                           WHERE i.imported_vibe_post_id = OLD.imported_vibe_post_id
                             AND i.deleted_at IS NULL
                      )
                      THEN 1 ELSE 0 END
           )
     WHERE id = OLD.imported_vibe_post_id;
END;


CREATE TRIGGER imported_post_images_refresh_displayable_after_insert
AFTER INSERT ON imported_post_images
BEGIN
    UPDATE imported_vibe_posts
       SET is_displayable = (
               SELECT CASE WHEN EXISTS (
                          SELECT 1
                            FROM imported_post_images i
                           WHERE i.imported_vibe_post_id = NEW.imported_vibe_post_id
                             AND i.deleted_at IS NULL
                      )
                      THEN 1 ELSE 0 END
           )
     WHERE id = NEW.imported_vibe_post_id;
END;


CREATE TRIGGER imported_post_images_refresh_displayable_after_move
AFTER UPDATE OF imported_vibe_post_id ON imported_post_images
WHEN NEW.imported_vibe_post_id <> OLD.imported_vibe_post_id
BEGIN
    UPDATE imported_vibe_posts
       SET is_displayable = (
               SELECT CASE WHEN EXISTS (
                          SELECT 1
                            FROM imported_post_images i
                           WHERE i.imported_vibe_post_id = OLD.imported_vibe_post_id
                             AND i.deleted_at IS NULL
                      )
                      THEN 1 ELSE 0 END
           )
     WHERE id = OLD.imported_vibe_post_id;

    UPDATE imported_vibe_posts
       SET is_displayable = (
               SELECT CASE WHEN EXISTS (
                          SELECT 1
                            FROM imported_post_images i
                           WHERE i.imported_vibe_post_id = NEW.imported_vibe_post_id
                             AND i.deleted_at IS NULL
                      )
                      THEN 1 ELSE 0 END
           )
     WHERE id = NEW.imported_vibe_post_id;
END;


CREATE TRIGGER imported_post_images_refresh_displayable_after_update
AFTER UPDATE OF deleted_at, imported_vibe_post_id ON imported_post_images
WHEN NEW.imported_vibe_post_id = OLD.imported_vibe_post_id
BEGIN
    UPDATE imported_vibe_posts
       SET is_displayable = (
               SELECT CASE WHEN EXISTS (
                          SELECT 1
                            FROM imported_post_images i
                           WHERE i.imported_vibe_post_id = NEW.imported_vibe_post_id
                             AND i.deleted_at IS NULL
                      )
                      THEN 1 ELSE 0 END
           )
     WHERE id = NEW.imported_vibe_post_id;
END;


CREATE TRIGGER vibe_tags_recount_after_delete
AFTER DELETE ON vibe_tags
BEGIN
    INSERT INTO tag_counts (tag, slug, "count")
    VALUES (
        OLD.tag,
        't-' || lower(hex(CAST(OLD.tag AS BLOB))),
        (
            SELECT COUNT(*)
              FROM vibe_tags vt
              JOIN imported_vibe_posts p ON p.id = vt.imported_vibe_post_id
             WHERE vt.tag = OLD.tag
               AND p.status = 'publishable'
               AND p.is_displayable = 1
        )
    )
    ON CONFLICT(tag) DO UPDATE SET "count" = excluded."count";
END;


CREATE TRIGGER vibe_tags_recount_after_insert
AFTER INSERT ON vibe_tags
BEGIN
    INSERT INTO tag_counts (tag, slug, "count")
    VALUES (
        NEW.tag,
        't-' || lower(hex(CAST(NEW.tag AS BLOB))),
        (
            SELECT COUNT(*)
              FROM vibe_tags vt
              JOIN imported_vibe_posts p ON p.id = vt.imported_vibe_post_id
             WHERE vt.tag = NEW.tag
               AND p.status = 'publishable'
               AND p.is_displayable = 1
        )
    )
    ON CONFLICT(tag) DO UPDATE SET "count" = excluded."count";
END;


CREATE TRIGGER vibe_tags_recount_after_update
AFTER UPDATE OF tag, imported_vibe_post_id ON vibe_tags
BEGIN
    -- A rename or a move touches one tag: the old tag loses a post, the new
    -- tag gains one. Both recounts are idempotent, so an unchanged tag simply
    -- recomputes the same number.
    INSERT INTO tag_counts (tag, slug, "count")
    VALUES (
        OLD.tag,
        't-' || lower(hex(CAST(OLD.tag AS BLOB))),
        (
            SELECT COUNT(*)
              FROM vibe_tags vt
              JOIN imported_vibe_posts p ON p.id = vt.imported_vibe_post_id
             WHERE vt.tag = OLD.tag
               AND p.status = 'publishable'
               AND p.is_displayable = 1
        )
    )
    ON CONFLICT(tag) DO UPDATE SET "count" = excluded."count";

    INSERT INTO tag_counts (tag, slug, "count")
    VALUES (
        NEW.tag,
        't-' || lower(hex(CAST(NEW.tag AS BLOB))),
        (
            SELECT COUNT(*)
              FROM vibe_tags vt
              JOIN imported_vibe_posts p ON p.id = vt.imported_vibe_post_id
             WHERE vt.tag = NEW.tag
               AND p.status = 'publishable'
               AND p.is_displayable = 1
        )
    )
    ON CONFLICT(tag) DO UPDATE SET "count" = excluded."count";
END;


CREATE TRIGGER tag_counts_repair_after_delete
AFTER DELETE ON tag_counts
-- Restore any tag the corpus still carries, even when its live count is 0:
-- the vocabulary is complete, so a tag that has posts at all keeps its row.
WHEN EXISTS (SELECT 1 FROM vibe_tags WHERE tag = OLD.tag)
BEGIN
    INSERT INTO tag_counts (tag, slug, "count")
    VALUES (
        OLD.tag,
        't-' || lower(hex(CAST(OLD.tag AS BLOB))),
        (
            SELECT COUNT(*)
              FROM vibe_tags vt
              JOIN imported_vibe_posts p ON p.id = vt.imported_vibe_post_id
             WHERE vt.tag = OLD.tag
               AND p.status = 'publishable'
               AND p.is_displayable = 1
        )
    );
END;


CREATE TRIGGER site_stats_repair_after_delete
AFTER DELETE ON site_stats
BEGIN
    INSERT INTO site_stats (id, post_count)
    SELECT 1, COUNT(*)
      FROM imported_vibe_posts
     WHERE status = 'publishable'
       AND is_displayable = 1;
END;


-- ---------------------------------------------------------------------------
-- Singleton row read by the site and maintained by the triggers above.
-- ---------------------------------------------------------------------------
INSERT INTO site_stats (id, post_count) VALUES (1, 0);
