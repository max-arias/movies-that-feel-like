-- 0012_seed_20260715T164645Z_01_posts.sql: data seed from pipeline:load run.
-- Generated:  2026-07-15T16:46:47.222378+00:00
-- Run started: 2026-07-15T16:46:45.317577+00:00
-- Source: data/working/load manifest from this run.
--
-- Idempotent: every INSERT is INSERT OR IGNORE, keyed by the
-- table's natural unique constraint.  Wrangler's migration
-- tracking normally prevents re-apply; the OR IGNORE is
-- defense in depth for partial / interrupted re-runs.
--
-- Chunk: 01_posts (1/5)
-- Tables: imported_vibe_posts.
-- Pipeline-state tables (processing_runs, pipeline_artifacts)
-- are intentionally excluded — they're per-run bookkeeping.

INSERT OR IGNORE INTO "imported_vibe_posts" ("id", "reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at") VALUES (243, '1uwpigg', 'Movies about science/math, but not sci-fi.', 'Movies about science/math but not sci-fi', '(Apparently an image I added before was AI generated so I’m reposting without it. )

I would accept shows as well. ', 'WildCartographer5027', 1784073068, '/r/MoviesThatFeelLike/comments/1uwpigg/movies_about_sciencemath_but_not_scifi/', 'https://www.reddit.com/gallery/1uwpigg', 'MoviesThatFeelLike', 'A request for films that explore science and mathematics in a non-sci-fi context, with commenters offering a wide range of biographical dramas, historical pieces, and math-centric stories. The overall tone is informative and helpful.', 'publishable', NULL, NULL, '2026-07-15 16:46:47', '2026-07-15 16:46:47');
