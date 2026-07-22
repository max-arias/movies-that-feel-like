-- Restore the legacy image columns for seeds that were generated before the
-- source/preview URL contract. This is also safe after the old destructive
-- 0028 migration, which left only source_url/preview_url and dimensions.

PRAGMA foreign_keys = OFF;

CREATE TABLE imported_post_images_bridge (
    id                    INTEGER PRIMARY KEY AUTOINCREMENT,
    imported_vibe_post_id INTEGER NOT NULL
                          REFERENCES imported_vibe_posts(id) ON DELETE CASCADE,
    url                   TEXT NOT NULL,
    cache_key             TEXT,
    cache_status          TEXT NOT NULL DEFAULT 'pending'
                          CHECK (cache_status IN ('pending', 'cached', 'failed', 'fallback')),
    width                 INTEGER,
    height                INTEGER,
    remote_url            TEXT,
    source_url            TEXT NOT NULL,
    preview_url           TEXT,
    sort_order            INTEGER NOT NULL DEFAULT 0,
    created_at            TEXT NOT NULL DEFAULT (datetime('now'))
);

INSERT INTO imported_post_images_bridge (
    id,
    imported_vibe_post_id,
    url,
    width,
    height,
    remote_url,
    source_url,
    preview_url,
    sort_order,
    created_at
)
SELECT
    id,
    imported_vibe_post_id,
    source_url,
    width,
    height,
    source_url,
    source_url,
    preview_url,
    sort_order,
    created_at
FROM imported_post_images;

DROP TABLE imported_post_images;
ALTER TABLE imported_post_images_bridge RENAME TO imported_post_images;

CREATE INDEX idx_imported_post_images_post
    ON imported_post_images(imported_vibe_post_id);

PRAGMA foreign_keys = ON;
