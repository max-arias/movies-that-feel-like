-- 0036_seed_20260729T024006Z_01_posts.sql: data seed from pipeline:load run.
-- Generated:  2026-07-29T02:40:10.857376+00:00
-- Run started: 2026-07-29T02:40:06.560790+00:00
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

INSERT OR IGNORE INTO "imported_vibe_posts" ("id", "reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at") VALUES (542, '1v9amj7', 'Movies or tv shows like the episode “the tall grass”', 'Movies or tv shows like the episode the tall grass', '[deleted]', '[deleted]', 1785271515, '/r/MoviesThatFeelLike/comments/1v9amj7/movies_or_tv_shows_like_the_episode_the_tall_grass/', '', 'MoviesThatFeelLike', 'A haunting, surreal horror atmosphere with cosmic dread and isolation.', 'skipped', 'no usable images; no enriched recommendation matches', NULL, '2026-07-29 02:40:10', '2026-07-29 02:40:10');
INSERT OR IGNORE INTO "imported_vibe_posts" ("id", "reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at") VALUES (543, '1v9bfvo', 'Movies that feel like OMORI', '', 'I just really like OMORI ', 'woodland-haze', 1785273300, '/r/MoviesThatFeelLike/comments/1v9bfvo/movies_that_feel_like_omori/', 'https://www.reddit.com/gallery/1v9bfvo', 'MoviesThatFeelLike', 'Surreal, emotionally charged, and psychologically intense with a dreamlike and horror-tinged atmosphere.', 'publishable', NULL, NULL, '2026-07-29 02:40:10', '2026-07-29 02:40:10');
INSERT OR IGNORE INTO "imported_vibe_posts" ("id", "reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at") VALUES (544, '1v9f6oz', 'Anime that feels like Ghost Rider', 'Anime that feels like Ghost Rider', '', 'maz323bf', 1785282025, '/r/MoviesThatFeelLike/comments/1v9f6oz/anime_that_feels_like_ghost_rider/', 'https://www.reddit.com/gallery/1v9f6oz', 'MoviesThatFeelLike', 'Dark, supernatural action with a hellish and rebellious aesthetic.', 'publishable', NULL, NULL, '2026-07-29 02:40:10', '2026-07-29 02:40:10');
