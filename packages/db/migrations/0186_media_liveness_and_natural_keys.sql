-- 0186_media_liveness_and_natural_keys.sql
--
-- Two coupled changes:
--
-- 1. Image liveness. Reddit keeps serving a 130x60 "image was probably
--    deleted" PNG (200-parseable, HTTP 404) from the stored URL after a
--    gallery image is removed, so the site cannot tell live images from dead
--    ones by URL. `checked_at` records the last successful reachability probe
--    and `deleted_at` the moment a probe positively identified the deleted
--    placeholder. NULL `deleted_at` means "not known to be deleted"; a post is
--    displayable only when it owns at least one image with NULL `deleted_at`.
--
-- 2. Natural keys. Generated seed migrations used to copy the run-local
--    SQLite row ids into D1. Whenever the local id sequence drifted from D1
--    (a replay silently dropping rows, or a schema mismatch swallowed by
--    INSERT OR IGNORE), a seed reused an id that D1 already owned and
--    INSERT OR IGNORE discarded the row without a word. Seeds now resolve
--    parents by natural key, so the destination allocates ids, and every
--    conflict target below must exist or the generated SQL fails loudly.

ALTER TABLE imported_post_images ADD COLUMN deleted_at TEXT;
ALTER TABLE imported_post_images ADD COLUMN checked_at TEXT;

CREATE UNIQUE INDEX IF NOT EXISTS idx_imported_post_images_post_source
  ON imported_post_images(imported_vibe_post_id, source_url);

CREATE UNIQUE INDEX IF NOT EXISTS idx_recommendations_media_tmdb
  ON recommendations(media_type, tmdb_id) WHERE tmdb_id IS NOT NULL;

CREATE UNIQUE INDEX IF NOT EXISTS idx_recommendations_media_igdb
  ON recommendations(media_type, igdb_id) WHERE igdb_id IS NOT NULL;

-- Feed queries filter on "has at least one image with deleted_at IS NULL" and
-- group vibe_tags by tag; both run per request.
CREATE INDEX IF NOT EXISTS idx_imported_post_images_liveness
  ON imported_post_images(imported_vibe_post_id, deleted_at);

CREATE INDEX IF NOT EXISTS idx_vibe_tags_tag ON vibe_tags(tag);
