-- The game a post says it wants things to feel like ("games like X").
-- Games site only; NULL on movies. `reference_igdb_id` is the natural key of
-- a `recommendations` row stored without evidence, so it never counts as a
-- recommendation. `reference_title` is kept even when IGDB has no match.
ALTER TABLE imported_vibe_posts ADD COLUMN reference_title TEXT;
ALTER TABLE imported_vibe_posts ADD COLUMN reference_igdb_id INTEGER;
