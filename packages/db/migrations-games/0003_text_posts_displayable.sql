-- Games shows text-only posts (MTFL-80). A games post is displayable while it
-- owns at least one live image OR owns no image at all: the site gives an
-- imageless post an IGDB or typographic hero. A post whose images all died
-- still drops out, as on movies. Recreates the five triggers that derive
-- is_displayable, then re-derives it for every row; the publishability trigger
-- keeps tag_counts and site_stats in step with each change.

DROP TRIGGER imported_vibe_posts_normalize_after_insert;

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
                      OR NOT EXISTS (
                          SELECT 1
                            FROM imported_post_images i
                           WHERE i.imported_vibe_post_id = NEW.id
                      )
                      THEN 1 ELSE 0 END
           )
     WHERE id = NEW.id;
END;

DROP TRIGGER imported_post_images_refresh_displayable_after_delete;

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
                      OR NOT EXISTS (
                          SELECT 1
                            FROM imported_post_images i
                           WHERE i.imported_vibe_post_id = OLD.imported_vibe_post_id
                      )
                      THEN 1 ELSE 0 END
           )
     WHERE id = OLD.imported_vibe_post_id;
END;

DROP TRIGGER imported_post_images_refresh_displayable_after_insert;

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
                      OR NOT EXISTS (
                          SELECT 1
                            FROM imported_post_images i
                           WHERE i.imported_vibe_post_id = NEW.imported_vibe_post_id
                      )
                      THEN 1 ELSE 0 END
           )
     WHERE id = NEW.imported_vibe_post_id;
END;

DROP TRIGGER imported_post_images_refresh_displayable_after_move;

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
                      OR NOT EXISTS (
                          SELECT 1
                            FROM imported_post_images i
                           WHERE i.imported_vibe_post_id = OLD.imported_vibe_post_id
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
                      OR NOT EXISTS (
                          SELECT 1
                            FROM imported_post_images i
                           WHERE i.imported_vibe_post_id = NEW.imported_vibe_post_id
                      )
                      THEN 1 ELSE 0 END
           )
     WHERE id = NEW.imported_vibe_post_id;
END;

DROP TRIGGER imported_post_images_refresh_displayable_after_update;

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
                      OR NOT EXISTS (
                          SELECT 1
                            FROM imported_post_images i
                           WHERE i.imported_vibe_post_id = NEW.imported_vibe_post_id
                      )
                      THEN 1 ELSE 0 END
           )
     WHERE id = NEW.imported_vibe_post_id;
END;

UPDATE imported_vibe_posts
   SET is_displayable = (
           SELECT CASE WHEN EXISTS (
                      SELECT 1
                        FROM imported_post_images i
                       WHERE i.imported_vibe_post_id = imported_vibe_posts.id
                         AND i.deleted_at IS NULL
                  )
                  OR NOT EXISTS (
                      SELECT 1
                        FROM imported_post_images i
                       WHERE i.imported_vibe_post_id = imported_vibe_posts.id
                  )
                  THEN 1 ELSE 0 END
       );
