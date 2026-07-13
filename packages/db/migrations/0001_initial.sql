-- 0001_initial: Core schema for imported vibe posts, recommendations, and processing artifacts.

-- ============================================================
-- Imported Vibe Posts
-- ============================================================
CREATE TABLE IF NOT EXISTS imported_vibe_posts (
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
    updated_at      TEXT    NOT NULL DEFAULT (datetime('now'))
);

CREATE INDEX idx_imported_vibe_posts_status ON imported_vibe_posts(status);
CREATE INDEX idx_imported_vibe_posts_created_utc ON imported_vibe_posts(created_utc DESC);
CREATE INDEX idx_imported_vibe_posts_reddit_id ON imported_vibe_posts(reddit_post_id);

-- ============================================================
-- Imported Post Images
-- ============================================================
CREATE TABLE IF NOT EXISTS imported_post_images (
    id              INTEGER PRIMARY KEY AUTOINCREMENT,
    imported_vibe_post_id INTEGER NOT NULL
                        REFERENCES imported_vibe_posts(id) ON DELETE CASCADE,
    url             TEXT    NOT NULL,
    cache_key       TEXT,                           -- R2 object key if cached
    cache_status    TEXT    NOT NULL DEFAULT 'pending'
                        CHECK (cache_status IN ('pending', 'cached', 'failed', 'fallback')),
    width           INTEGER,
    height          INTEGER,
    remote_url      TEXT,                           -- original hotlink fallback
    sort_order      INTEGER NOT NULL DEFAULT 0,

    created_at      TEXT    NOT NULL DEFAULT (datetime('now'))
);

CREATE INDEX idx_imported_post_images_post ON imported_post_images(imported_vibe_post_id);

-- ============================================================
-- Recommendations (canonical movies/series)
-- ============================================================
CREATE TABLE IF NOT EXISTS recommendations (
    id              INTEGER PRIMARY KEY AUTOINCREMENT,

    -- Canonical identity
    tmdb_id         INTEGER,
    imdb_id         TEXT,
    title           TEXT    NOT NULL,
    original_title  TEXT,
    media_type      TEXT    NOT NULL DEFAULT 'movie'
                        CHECK (media_type IN ('movie', 'tv')),
    release_year    INTEGER,
    poster_url      TEXT,
    backdrop_url    TEXT,
    overview        TEXT,

    -- TMDB enrichment metadata
    tmdb_data       TEXT,                           -- JSON blob for extra fields
    popularity      REAL,
    vote_average    REAL,

    is_ambiguous    INTEGER NOT NULL DEFAULT 0,     -- 1 = unresolved candidate
    created_at      TEXT    NOT NULL DEFAULT (datetime('now')),
    updated_at      TEXT    NOT NULL DEFAULT (datetime('now'))
);

CREATE INDEX idx_recommendations_tmdb_id ON recommendations(tmdb_id);
CREATE INDEX idx_recommendations_title ON recommendations(title);
CREATE INDEX idx_recommendations_ambiguous ON recommendations(is_ambiguous);

-- ============================================================
-- Recommendation Evidence (links extracted mentions to posts)
-- ============================================================
CREATE TABLE IF NOT EXISTS recommendation_evidence (
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
    UNIQUE(recommendation_id, imported_vibe_post_id, evidence_comment_id)
);

CREATE INDEX idx_recommendation_evidence_rec ON recommendation_evidence(recommendation_id);
CREATE INDEX idx_recommendation_evidence_post ON recommendation_evidence(imported_vibe_post_id);

-- ============================================================
-- Vibe Tags
-- ============================================================
CREATE TABLE IF NOT EXISTS vibe_tags (
    id                    INTEGER PRIMARY KEY AUTOINCREMENT,
    imported_vibe_post_id INTEGER NOT NULL
                          REFERENCES imported_vibe_posts(id) ON DELETE CASCADE,
    tag                   TEXT    NOT NULL,
    source                TEXT    NOT NULL DEFAULT 'extraction'
                          CHECK (source IN ('extraction', 'manual', 'generated')),

    created_at            TEXT    NOT NULL DEFAULT (datetime('now')),
    UNIQUE(imported_vibe_post_id, tag)
);

CREATE INDEX idx_vibe_tags_post ON vibe_tags(imported_vibe_post_id);

-- ============================================================
-- Processing Runs (pipeline audit trail)
-- ============================================================
CREATE TABLE IF NOT EXISTS processing_runs (
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

CREATE INDEX idx_processing_runs_stage ON processing_runs(stage);
CREATE INDEX idx_processing_runs_status ON processing_runs(status);

-- ============================================================
-- Pipeline Artifacts (references to stored files)
-- ============================================================
CREATE TABLE IF NOT EXISTS pipeline_artifacts (
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

CREATE INDEX idx_pipeline_artifacts_run ON pipeline_artifacts(processing_run_id);
CREATE INDEX idx_pipeline_artifacts_post ON pipeline_artifacts(imported_vibe_post_id);
