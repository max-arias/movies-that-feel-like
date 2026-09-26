-- 0193_request_path_indexes.sql
--
-- Keep the per-request feed queries proportional to the page they return, not
-- to the corpus. D1 bills every row a query scans, and both queries below run
-- on every on-demand tag-feed render.
--
-- 1. Sidebar tags (`count > 0 ORDER BY count DESC, tag LIMIT n`). Without an
--    index on the ordering, SQLite scans the whole vocabulary and sorts it to
--    return the first n rows. This index serves the filter and the order, so
--    the query stops after n rows.
--
-- 2. Tag feed (vibe_tags ⋈ imported_vibe_posts WHERE tag = ?). Without table
--    statistics the planner assumes the feed index is the cheaper outer loop
--    and walks every displayable post, probing each for the tag. With
--    statistics it sees that idx_vibe_tags_tag is selective, drives from the
--    tag's own rows and sorts only those. ANALYZE is scoped to the two joined
--    tables so it does not scan the rest of the database.

CREATE INDEX IF NOT EXISTS idx_tag_counts_rank
  ON tag_counts("count" DESC, tag);

ANALYZE vibe_tags;
ANALYZE imported_vibe_posts;
