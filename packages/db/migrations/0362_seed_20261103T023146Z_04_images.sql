-- 0362_seed_20261103T023146Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-03T02:32:44.904942+00:00
-- Run started: 2026-11-03T02:31:46.403662+00:00
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
SELECT p.id, 'https://i.redd.it/2o18dbozk9zh1.jpeg', 'https://preview.redd.it/2o18dbozk9zh1.jpeg?width=960&auto=webp&s=60bfca49d1ddbb79e8528cad1ff1650aa35cf2ba', 960, 2081, 0, '2026-11-03 02:32:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xm9iox'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ygpk3cozk9zh1.jpeg', NULL, NULL, NULL, 1, '2026-11-03 02:32:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xm9iox'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ul70hbozk9zh1.jpeg', 'https://preview.redd.it/ul70hbozk9zh1.jpeg?width=960&auto=webp&s=ce417e8c8808658433c831029f4dee9a2e165bc3', 960, 1440, 2, '2026-11-03 02:32:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xm9iox'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8gl9bbozk9zh1.jpeg', 'https://preview.redd.it/8gl9bbozk9zh1.jpeg?width=960&auto=webp&s=60e1b57274e6d4ea570be94eb0d53efaece5b627', 960, 540, 3, '2026-11-03 02:32:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xm9iox'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fwn4vb1gp9zh1.jpeg', 'https://preview.redd.it/fwn4vb1gp9zh1.jpeg?width=960&auto=webp&s=90f9973c3700f6194584f109f72f869e71029f1f', 960, 997, 0, '2026-11-03 02:32:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xma6ab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bmwf0b1gp9zh1.jpeg', 'https://preview.redd.it/bmwf0b1gp9zh1.jpeg?width=960&auto=webp&s=f5977ab5fcfecee0361d3ccee680ad517d79b9eb', 960, 686, 1, '2026-11-03 02:32:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xma6ab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4kmzoa1gp9zh1.jpeg', 'https://preview.redd.it/4kmzoa1gp9zh1.jpeg?width=960&auto=webp&s=9649d69cbbaf0eafb4947294814d523e16d094e7', 960, 688, 2, '2026-11-03 02:32:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xma6ab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8y43va1gp9zh1.jpeg', NULL, NULL, NULL, 3, '2026-11-03 02:32:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xma6ab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0i5una1gp9zh1.jpeg', NULL, NULL, NULL, 4, '2026-11-03 02:32:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xma6ab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zjspsa1gp9zh1.jpeg', NULL, NULL, NULL, 5, '2026-11-03 02:32:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xma6ab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1yhh51jn1azh1.jpeg', NULL, NULL, NULL, 0, '2026-11-03 02:32:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xmbwio'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b76whhln1azh1.png', 'https://preview.redd.it/b76whhln1azh1.png?width=960&auto=webp&s=d75c3d4b607fc86fb3f262da52a1b3751687ddce', 960, 540, 1, '2026-11-03 02:32:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xmbwio'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yzw81fpn1azh1.png', 'https://preview.redd.it/yzw81fpn1azh1.png?width=960&auto=webp&s=d02af696f841866cd2dd94fc1d30bcfaf232a321', 960, 1440, 2, '2026-11-03 02:32:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xmbwio'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k0l3b6sn1azh1.png', 'https://preview.redd.it/k0l3b6sn1azh1.png?width=960&auto=webp&s=5488e8d13f275ad7035b9bc5886154ac4b728069', 960, 540, 3, '2026-11-03 02:32:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xmbwio'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zfxsqcun1azh1.jpeg', NULL, NULL, NULL, 4, '2026-11-03 02:32:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xmbwio'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ul3lonlx2azh1.gif', NULL, NULL, NULL, 0, '2026-11-03 02:32:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xmc3dz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
