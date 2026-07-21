-- Replace cache-oriented image fields with the source/preview URL contract.
-- Preserve the historical remote URL when available, falling back to url.

PRAGMA foreign_keys = OFF;

CREATE TABLE imported_post_images_new (
    id                    INTEGER PRIMARY KEY AUTOINCREMENT,
    imported_vibe_post_id INTEGER NOT NULL
                          REFERENCES imported_vibe_posts(id) ON DELETE CASCADE,
    source_url            TEXT NOT NULL,
    preview_url           TEXT,
    width                 INTEGER,
    height                INTEGER,
    sort_order            INTEGER NOT NULL DEFAULT 0,
    created_at            TEXT NOT NULL DEFAULT (datetime('now'))
);

INSERT INTO imported_post_images_new (
    id,
    imported_vibe_post_id,
    source_url,
    preview_url,
    width,
    height,
    sort_order,
    created_at
)
SELECT
    id,
    imported_vibe_post_id,
    COALESCE(remote_url, url),
    NULL,
    width,
    height,
    sort_order,
    created_at
FROM imported_post_images;

DROP TABLE imported_post_images;
ALTER TABLE imported_post_images_new RENAME TO imported_post_images;

CREATE INDEX idx_imported_post_images_post
    ON imported_post_images(imported_vibe_post_id);

PRAGMA foreign_keys = ON;
