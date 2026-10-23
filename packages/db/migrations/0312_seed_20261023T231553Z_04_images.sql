-- 0312_seed_20261023T231553Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-23T23:16:28.392768+00:00
-- Run started: 2026-10-23T23:15:53.157852+00:00
-- Source: data/working/load manifest from this run.
--
-- Idempotent: every row is an upsert keyed by the table's
-- natural unique constraint, and every child resolves its
-- parents through that same key.  Row ids are never copied —
-- the destination allocates them — so re-applying refreshes the
-- row it belongs to instead of colliding with an id D1 already
-- owns.  Wrangler's migration tracking normally prevents
-- re-apply; the upsert is defense in depth for partial /
-- interrupted re-runs, and a conflict target the destination
-- cannot satisfy aborts the apply instead of dropping rows.
--
-- Chunk: 04_images (4/5)
-- Tables: imported_post_images.
-- Pipeline-state tables (processing_runs, pipeline_artifacts)
-- are intentionally excluded — they're per-run bookkeeping.

INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4cnwr60xy2xh1.jpeg', NULL, NULL, NULL, 0, '2026-10-23 23:16:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcubar'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/41qrnhp1z2xh1.jpeg', NULL, NULL, NULL, 1, '2026-10-23 23:16:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcubar'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bnqzvm3si3xh1.jpeg', 'https://preview.redd.it/bnqzvm3si3xh1.jpeg?width=960&auto=webp&s=042da1e74152a687c0b4c7858416d61f1ae8c88d', 960, 540, 0, '2026-10-23 23:16:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcwyvt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/NnZ0bGhudW1sM3hoMYBMPTWIQrmiB9AgKd4pHXEiWz71jJcgewxA9iJKKqWz.jpeg?format=pjpg&auto=webp&s=d7773f401da4d92f6f426eb8a7ee063e16f21db7', NULL, NULL, NULL, 0, '2026-10-23 23:16:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcxbta'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
