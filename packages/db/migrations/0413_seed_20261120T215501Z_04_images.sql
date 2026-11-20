-- 0413_seed_20261120T215501Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-20T21:55:26.982514+00:00
-- Run started: 2026-11-20T21:55:01.997287+00:00
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
SELECT p.id, 'https://i.redd.it/094lhdvplt1i1.png', NULL, NULL, NULL, 0, '2026-11-20 21:55:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2zxe'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2sp9lmzplt1i1.png', NULL, NULL, NULL, 1, '2026-11-20 21:55:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2zxe'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nb67efadau1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 21:55:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx6fo5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bui8o126mu1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 21:55:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx7zzi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
