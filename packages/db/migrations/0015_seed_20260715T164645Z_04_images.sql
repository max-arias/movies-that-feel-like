-- 0015_seed_20260715T164645Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-07-15T16:46:47.223449+00:00
-- Run started: 2026-07-15T16:46:45.317577+00:00
-- Source: data/working/load manifest from this run.
--
-- Idempotent: every INSERT is INSERT OR IGNORE, keyed by the
-- table's natural unique constraint.  Wrangler's migration
-- tracking normally prevents re-apply; the OR IGNORE is
-- defense in depth for partial / interrupted re-runs.
--
-- Chunk: 04_images (4/5)
-- Tables: imported_post_images.
-- Pipeline-state tables (processing_runs, pipeline_artifacts)
-- are intentionally excluded — they're per-run bookkeeping.

INSERT OR IGNORE INTO "imported_post_images" ("id", "imported_vibe_post_id", "url", "cache_key", "cache_status", "width", "height", "remote_url", "sort_order", "created_at") VALUES (1148, 243, 'https://preview.redd.it/yylh9zb79adh1.jpg?width=913&format=pjpg&auto=webp&s=32e39c826f8a6631402b24dbfdb22432aab353e7', '/home/runner/work/movies-that-feel-like/movies-that-feel-like/data/assets/reddit/1uwpigg/0000-yylh9zb79adh1.jpg', 'cached', NULL, NULL, 'https://preview.redd.it/yylh9zb79adh1.jpg?width=913&format=pjpg&auto=webp&s=32e39c826f8a6631402b24dbfdb22432aab353e7', 0, '2026-07-15 16:46:47');
INSERT OR IGNORE INTO "imported_post_images" ("id", "imported_vibe_post_id", "url", "cache_key", "cache_status", "width", "height", "remote_url", "sort_order", "created_at") VALUES (1149, 243, 'https://preview.redd.it/7dgl60c79adh1.jpg?width=2000&format=pjpg&auto=webp&s=bcc985080778a73b5764ad92a88e506307ec9db0', '/home/runner/work/movies-that-feel-like/movies-that-feel-like/data/assets/reddit/1uwpigg/0001-7dgl60c79adh1.jpg', 'cached', NULL, NULL, 'https://preview.redd.it/7dgl60c79adh1.jpg?width=2000&format=pjpg&auto=webp&s=bcc985080778a73b5764ad92a88e506307ec9db0', 1, '2026-07-15 16:46:47');
