-- 0287_seed_20261020T050116Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-20T05:01:58.678401+00:00
-- Run started: 2026-10-20T05:01:16.071146+00:00
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
SELECT p.id, 'https://i.redd.it/c2hbhu54yhwh1.jpeg', NULL, NULL, NULL, 0, '2026-10-20 05:01:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaaih7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e0x54ua44iwh1.jpeg', 'https://preview.redd.it/e0x54ua44iwh1.jpeg?width=960&auto=webp&s=f02f9ec0e55cf392c22ca0842b97d8f1bc5c160e', 960, 953, 0, '2026-10-20 05:01:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabca0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/erweb8nu4iwh1.jpeg', 'https://preview.redd.it/erweb8nu4iwh1.jpeg?width=960&auto=webp&s=674de87dbeb95ff7389e579551cae2e17f21990d', 960, 540, 0, '2026-10-20 05:01:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabf66'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ln4rdmn95iwh1.png', NULL, NULL, NULL, 0, '2026-10-20 05:01:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabqxs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ww3torlb5iwh1.png', NULL, NULL, NULL, 1, '2026-10-20 05:01:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabqxs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lzb5g5td5iwh1.png', NULL, NULL, NULL, 2, '2026-10-20 05:01:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabqxs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/m9d8xr6laiwh1.jpeg', 'https://preview.redd.it/m9d8xr6laiwh1.jpeg?width=960&auto=webp&s=6672287cebd333438b7a43cdb5da7b9762f994f3', 960, 599, 0, '2026-10-20 05:01:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xac6b7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f2moxs6laiwh1.jpeg', 'https://preview.redd.it/f2moxs6laiwh1.jpeg?width=960&auto=webp&s=54c683c28f8d3fed161611fbd8854a3576785732', 960, 719, 1, '2026-10-20 05:01:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xac6b7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wk3rs17laiwh1.jpeg', 'https://preview.redd.it/wk3rs17laiwh1.jpeg?width=960&auto=webp&s=3a1214084bbe5ffcddbec047e064cf002702facc', 960, 600, 2, '2026-10-20 05:01:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xac6b7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hr1iwy6laiwh1.jpeg', 'https://preview.redd.it/hr1iwy6laiwh1.jpeg?width=960&auto=webp&s=aad3e0e001ba3f96e32bd0bac25717fc27469094', 960, 539, 3, '2026-10-20 05:01:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xac6b7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/serxm37laiwh1.jpeg', 'https://preview.redd.it/serxm37laiwh1.jpeg?width=960&auto=webp&s=2b0fcb9f849e5b7b004615c3329bb45e91444e76', 960, 599, 4, '2026-10-20 05:01:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xac6b7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kne4q87laiwh1.jpeg', 'https://preview.redd.it/kne4q87laiwh1.jpeg?width=960&auto=webp&s=5dbfc2ab5774dd327ecbe63d98c67957b7cee0f5', 960, 540, 5, '2026-10-20 05:01:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xac6b7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7ac0tc7laiwh1.jpeg', NULL, NULL, NULL, 6, '2026-10-20 05:01:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xac6b7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
