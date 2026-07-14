-- 0003_games: Extend the recommendations table to support game records.
--
-- Changes:
--   1. Add 'game' to the media_type CHECK constraint.
--   2. Add igdb_id, external_url, platforms columns.
--   3. Add an index on igdb_id.
--
-- The CHECK constraint change requires a table-recreate (SQLite
-- doesn't support modifying a CHECK in place via ALTER TABLE).
-- Foreign keys are temporarily disabled to allow the DROP+RECREATE
-- without cascading existing recommendation_evidence rows.

PRAGMA foreign_keys=OFF;

CREATE TABLE recommendations_new (
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
    tmdb_data       TEXT,
    popularity      REAL,
    vote_average    REAL,
    is_ambiguous    INTEGER NOT NULL DEFAULT 0,
    evidence_score  REAL    NOT NULL DEFAULT 0,
    created_at      TEXT    NOT NULL DEFAULT (datetime('now')),
    updated_at      TEXT    NOT NULL DEFAULT (datetime('now'))
);

INSERT INTO recommendations_new
    SELECT id, tmdb_id, imdb_id, NULL, title, original_title, media_type,
           release_year, poster_url, backdrop_url, overview, NULL, NULL, tmdb_data,
           popularity, vote_average, is_ambiguous, evidence_score,
           created_at, updated_at
    FROM recommendations;

DROP TABLE recommendations;
ALTER TABLE recommendations_new RENAME TO recommendations;

CREATE INDEX idx_recommendations_tmdb_id    ON recommendations(tmdb_id);
CREATE INDEX idx_recommendations_igdb_id    ON recommendations(igdb_id);
CREATE INDEX idx_recommendations_title      ON recommendations(title);
CREATE INDEX idx_recommendations_ambiguous  ON recommendations(is_ambiguous);

PRAGMA foreign_keys=ON;
