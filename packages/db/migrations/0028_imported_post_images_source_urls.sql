-- Introduce the source/preview URL contract without removing url yet.
-- Historical seed migrations after this file still insert the legacy columns;
-- 0033 finalizes the table once those seeds have run.

ALTER TABLE imported_post_images ADD COLUMN source_url TEXT;
ALTER TABLE imported_post_images ADD COLUMN preview_url TEXT;

UPDATE imported_post_images
SET source_url = COALESCE(remote_url, url)
WHERE source_url IS NULL;

CREATE TRIGGER imported_post_images_fill_source_url
AFTER INSERT ON imported_post_images
WHEN NEW.source_url IS NULL
BEGIN
    UPDATE imported_post_images
    SET source_url = COALESCE(NEW.remote_url, NEW.url)
    WHERE id = NEW.id;
END;
