-- 0192_displayability_and_summaries.sql
--
-- Materialized summaries for cheap reads, plus the triggers that keep them
-- exact for every writer.
--
-- 1. imported_vibe_posts.is_displayable — true iff the post owns at least one
--    image with a NULL deleted_at. Separate from `status` on purpose: a
--    publishable post whose only image a probe proved dead must stop being
--    displayable without its status changing. NULL deleted_at keeps meaning
--    "not known to be deleted", so a not-yet-probed image is displayable and
--    a restored image (deleted_at back to NULL) makes the post displayable
--    again.
--
-- 2. tag_counts — one row per tag in the vocabulary with the number of
--    publishable, displayable posts carrying it. Rows for tags that currently
--    have none stay behind with count = 0; readers filter count > 0.
--
-- 3. site_stats — singleton row (id = 1) with the count of publishable,
--    displayable posts.
--
-- The invariants live in triggers rather than in each pipeline stage, so the
-- loader, the generated seed migrations, the liveness probe's generated UPDATE
-- statements and any hand-written SQL all land the same values:
--
--   * imported_post_images INSERT / UPDATE / DELETE / move  → recompute the
--     owning post's is_displayable (the recompute is a scoped EXISTS over that
--     post's images, never a rescan of the corpus).
--   * imported_vibe_posts insert / publishability change / delete → normalize
--     the derived column on insert, recount only the tags that post carries,
--     and adjust site_stats by the delta.
--   * vibe_tags INSERT / UPDATE / DELETE → recount only the affected tag.
--
-- Refreshing a value is always a scoped recompute or a delta, so a mutation
-- costs work proportional to the mutated post's own tags and images — never a
-- wholesale summary rescan. Recounts are idempotent, which is what makes the
-- cascading-delete path safe: SQLite deletes the parent row before it cascades
-- into the children, so the child triggers recompute against a database where
-- the parent is already gone.

-- ── 1. Displayability ────────────────────────────────────────

ALTER TABLE imported_vibe_posts ADD COLUMN is_displayable INTEGER NOT NULL DEFAULT 0;

UPDATE imported_vibe_posts
   SET is_displayable = CASE
           WHEN EXISTS (
               SELECT 1
                 FROM imported_post_images i
                WHERE i.imported_vibe_post_id = imported_vibe_posts.id
                  AND i.deleted_at IS NULL
           )
           THEN 1 ELSE 0 END;

-- Feed and tag pages walk (status, displayability, newest first, id last) and
-- stop after a page, so the whole ordering must come from one index.
CREATE INDEX IF NOT EXISTS idx_imported_vibe_posts_feed
  ON imported_vibe_posts(status, is_displayable, created_utc DESC, id DESC);

-- ── 2. Summary tables ────────────────────────────────────────

CREATE TABLE IF NOT EXISTS tag_counts (
    tag               TEXT PRIMARY KEY NOT NULL,
    slug              TEXT NOT NULL,
    "count"           INTEGER NOT NULL DEFAULT 0
);

-- One slug per tag; the expression is injective (hex of the UTF-8 bytes), so
-- this index can only ever reject a duplicate insertion of the same tag.
CREATE UNIQUE INDEX IF NOT EXISTS idx_tag_counts_slug ON tag_counts(slug);

CREATE TABLE IF NOT EXISTS site_stats (
    id                INTEGER PRIMARY KEY NOT NULL
                      CONSTRAINT site_stats_singleton CHECK (id = 1),
    post_count        INTEGER NOT NULL DEFAULT 0
);

-- Backfill: the complete tag vocabulary, then each tag's live count.
INSERT INTO tag_counts (tag, slug, count)
SELECT DISTINCT tag, 't-' || lower(hex(CAST(tag AS BLOB))), 0
  FROM vibe_tags;

UPDATE tag_counts
   SET "count" = (
           SELECT COUNT(*)
             FROM vibe_tags vt
             JOIN imported_vibe_posts p ON p.id = vt.imported_vibe_post_id
            WHERE vt.tag = tag_counts.tag
              AND p.status = 'publishable'
              AND p.is_displayable = 1
       );

INSERT INTO site_stats (id, post_count)
SELECT 1, COUNT(*)
  FROM imported_vibe_posts
 WHERE status = 'publishable'
   AND is_displayable = 1;

-- ── 3. Displayability triggers ───────────────────────────────
--
-- The recompute is unconditional (it is one indexed EXISTS) and the WHEN
-- clause on the post trigger below is what decides whether anything derived
-- from it needs to move.

DROP TRIGGER IF EXISTS imported_post_images_refresh_displayable_after_insert;
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

-- Two columns can move displayability: deleted_at (a probe marks a placeholder
-- dead, or a restore clears it) and the owning post (a move). A seed's refresh
-- of preview/width/sort_order, or a probe's checked_at touch-up, changes
-- neither, so neither may rewrite the post row.
DROP TRIGGER IF EXISTS imported_post_images_refresh_displayable_after_update;
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

DROP TRIGGER IF EXISTS imported_post_images_refresh_displayable_after_move;
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

-- When the post itself is deleted, SQLite removes the parent row before it
-- cascades into the images, so this update matches no row. The post's own
-- BEFORE DELETE trigger has already corrected the tag counts.
DROP TRIGGER IF EXISTS imported_post_images_refresh_displayable_after_delete;
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

-- ── 4. Publishability triggers ───────────────────────────────
--
-- "Live" means publishable AND displayable; every summary below counts live
-- posts only, so both columns are watched. An insert normalizes the derived
-- column before counting it, a publishability change recounts only that post's
-- tags and adjusts site_stats by the delta, and a delete does the same from
-- the row's last state.

DROP TRIGGER IF EXISTS imported_vibe_posts_normalize_after_insert;
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

DROP TRIGGER IF EXISTS imported_vibe_posts_recount_after_publishability_change;
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

-- A post delete reaches here before SQLite cascades into the children, so the
-- post's own tags are still readable. The recount excludes the doomed row, so
-- it lands the same value the cascade's own tag triggers compute a moment
-- later — and it still holds when nothing cascades at all (foreign keys off
-- leaves the children behind as orphans).
DROP TRIGGER IF EXISTS imported_vibe_posts_recount_tags_before_delete;
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

DROP TRIGGER IF EXISTS imported_vibe_posts_stats_after_delete;
CREATE TRIGGER imported_vibe_posts_stats_after_delete
AFTER DELETE ON imported_vibe_posts
WHEN OLD.status = 'publishable' AND OLD.is_displayable = 1
BEGIN
    UPDATE site_stats SET post_count = post_count - 1 WHERE id = 1;
END;

-- ── 5. Tag triggers ──────────────────────────────────────────

DROP TRIGGER IF EXISTS vibe_tags_recount_after_insert;
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

DROP TRIGGER IF EXISTS vibe_tags_recount_after_update;
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

DROP TRIGGER IF EXISTS vibe_tags_recount_after_delete;
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

-- ── 6. Summary repair ────────────────────────────────────────
--
-- The triggers above keep the summaries correct, but they only run on writes
-- to the tables they watch: deleting a summary row itself would otherwise
-- leave a site_stats that stops counting anything, or a tag that can never
-- recover its count. These two restore the invariants when a summary row is
-- removed (a reset script, a cleanup migration). They fire on the deletion of
-- a summary row, never per data row.

DROP TRIGGER IF EXISTS site_stats_repair_after_delete;
CREATE TRIGGER site_stats_repair_after_delete
AFTER DELETE ON site_stats
BEGIN
    INSERT INTO site_stats (id, post_count)
    SELECT 1, COUNT(*)
      FROM imported_vibe_posts
     WHERE status = 'publishable'
       AND is_displayable = 1;
END;

DROP TRIGGER IF EXISTS tag_counts_repair_after_delete;
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
