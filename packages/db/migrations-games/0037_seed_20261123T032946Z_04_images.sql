-- 0037_seed_20261123T032946Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-23T03:29:46.923638+00:00
-- Run started: 2026-11-23T03:29:46.530755+00:00
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
SELECT p.id, 'https://i.redd.it/z3tfhu4rl63i1.png', 'https://preview.redd.it/z3tfhu4rl63i1.png?width=960&auto=webp&s=ec6a81eded9d542e37d40526824febcc5382ee70', 960, 540, 0, '2026-11-23 03:29:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2rxuj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2gpm6abrl63i1.png', NULL, NULL, NULL, 1, '2026-11-23 03:29:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2rxuj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/67290n3sl63i1.png', NULL, NULL, NULL, 2, '2026-11-23 03:29:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2rxuj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6sm2oqrwl63i1.png', NULL, NULL, NULL, 3, '2026-11-23 03:29:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2rxuj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nla1idn0m63i1.png', NULL, NULL, NULL, 4, '2026-11-23 03:29:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2rxuj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4f32r1c9v63i1.jpeg', NULL, NULL, NULL, 0, '2026-11-23 03:29:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2t3aw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n40i2gncv63i1.jpeg', NULL, NULL, NULL, 1, '2026-11-23 03:29:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2t3aw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f7k51l8hv63i1.jpeg', NULL, NULL, NULL, 2, '2026-11-23 03:29:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2t3aw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/245nn6krw73i1.jpeg', NULL, NULL, NULL, 0, '2026-11-23 03:29:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y2zk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r8xez4krw73i1.jpeg', NULL, NULL, NULL, 1, '2026-11-23 03:29:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y2zk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0u15a4krw73i1.jpeg', NULL, NULL, NULL, 2, '2026-11-23 03:29:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y2zk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qqcdfibsw73i1.jpeg', NULL, NULL, NULL, 3, '2026-11-23 03:29:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y2zk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/khr3e957m83i1.png', 'https://preview.redd.it/khr3e957m83i1.png?width=960&auto=webp&s=77d87374db7c61843f63fba012846b84d4509ed1', 960, 734, 0, '2026-11-23 03:29:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31emb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hp4jiye8m83i1.png', 'https://preview.redd.it/hp4jiye8m83i1.png?width=960&auto=webp&s=04c936078b0f2292d0e7bad940edb752bf344779', 960, 731, 1, '2026-11-23 03:29:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31emb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/KURLq0FRZ7uGDPpIPL91biUfg6UY8nTxNjco-ztMLS4.jpeg?format=pjpg&auto=webp&s=a4d91e4443b81b801f3cdfe94a2c7f33c2859139', NULL, NULL, NULL, 0, '2026-11-23 03:29:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31yas'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/v47fr181y83i1.jpeg', NULL, NULL, NULL, 0, '2026-11-23 03:29:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y32t54'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
