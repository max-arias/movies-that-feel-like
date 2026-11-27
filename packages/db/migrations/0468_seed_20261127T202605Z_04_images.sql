-- 0468_seed_20261127T202605Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-27T20:26:40.619035+00:00
-- Run started: 2026-11-27T20:26:05.822924+00:00
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
SELECT p.id, 'https://i.redd.it/825822ync21i1.jpeg', 'https://preview.redd.it/825822ync21i1.jpeg?width=960&auto=webp&s=7f6cb3c3320257ec7a9ed700ba7f2141acbc98ee', 960, 741, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtwcj7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uixds3ync21i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtwcj7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/v12dtcync21i1.jpeg', 'https://preview.redd.it/v12dtcync21i1.jpeg?width=960&auto=webp&s=aee5923771c95d3091f8b40c805bc3621cb664bb', 960, 960, 2, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtwcj7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/to97t2ync21i1.jpeg', NULL, NULL, NULL, 3, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtwcj7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/knvnr2ync21i1.jpeg', NULL, NULL, NULL, 4, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtwcj7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wzv24qpgk21i1.jpeg', 'https://preview.redd.it/wzv24qpgk21i1.jpeg?width=960&auto=webp&s=c1846790b1b174af03e275107a35f223a14f74f2', 960, 1108, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtxcjh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qdnybqpgk21i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtxcjh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z8yutppgk21i1.jpeg', NULL, NULL, NULL, 2, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtxcjh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/57081qpgk21i1.jpeg', NULL, NULL, NULL, 3, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtxcjh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hyhddm3b831i1.jpeg', 'https://preview.redd.it/hyhddm3b831i1.jpeg?width=960&auto=webp&s=5d032f1a87fd49f661913e9a11770a6825a2a206', 960, 550, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu0b8b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qiv39kon241i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu3n8a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4z6umkqn241i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu3n8a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r75gdtrn241i1.jpeg', NULL, NULL, NULL, 2, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu3n8a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/c64dx3tn241i1.jpeg', NULL, NULL, NULL, 3, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu3n8a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/di2soiun241i1.jpeg', NULL, NULL, NULL, 4, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu3n8a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/arjnamvn241i1.jpeg', NULL, NULL, NULL, 5, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu3n8a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fd9q6qwn241i1.jpeg', NULL, NULL, NULL, 6, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu3n8a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wlvuedyn241i1.jpeg', NULL, NULL, NULL, 7, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu3n8a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6l9xszzn241i1.jpeg', NULL, NULL, NULL, 8, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xu3n8a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wae2zihkc61i1.jpeg', 'https://preview.redd.it/wae2zihkc61i1.jpeg?width=960&auto=webp&s=209e4f13b5dc822c1ed733e59431066876a02371', 960, 480, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xubdrw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wjltgmlkc61i1.jpeg', 'https://preview.redd.it/wjltgmlkc61i1.jpeg?width=960&auto=webp&s=5f47a691b00b9f4f6d6018c9cc717b5877dd47ca', 960, 540, 1, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xubdrw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ou6xgapkc61i1.jpeg', NULL, NULL, NULL, 2, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xubdrw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ucjzdjrkc61i1.jpeg', NULL, NULL, NULL, 3, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xubdrw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f2ff7mtkc61i1.jpeg', NULL, NULL, NULL, 4, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xubdrw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ma1vazvkc61i1.jpeg', NULL, NULL, NULL, 5, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xubdrw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/NmZleHBscWdhNjFpMRAHvYatWSEtqlW-UDy7Lflda434BYsSgMi4m88aOxu6.png?format=pjpg&auto=webp&s=e06c26eccf0659a01a9d9777fc4862c713ad9460', NULL, NULL, NULL, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xubhgl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/41lif6oro61i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xucsxl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cutjyitro61i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xucsxl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4ay3bhzro61i1.jpeg', NULL, NULL, NULL, 2, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xucsxl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mhirlxxyz61i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xueaz6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hqj0j40zz61i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xueaz6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/iiaj1y1zz61i1.jpeg', NULL, NULL, NULL, 2, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xueaz6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/76gb7p3zz61i1.jpeg', NULL, NULL, NULL, 3, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xueaz6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i6tq9c51q71i1.jpeg', 'https://preview.redd.it/i6tq9c51q71i1.jpeg?width=960&auto=webp&s=4d11c954d4b1a5b6d16883a38d8184325161d2a1', 960, 1280, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xui43b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p1ouvn6j181i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xujvo3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vr64dn6j181i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xujvo3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dph0an6j181i1.jpeg', NULL, NULL, NULL, 2, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xujvo3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/alzajo6j181i1.jpeg', NULL, NULL, NULL, 3, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xujvo3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zwyihn6j181i1.jpeg', NULL, NULL, NULL, 4, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xujvo3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oq2nr3ye981i1.jpeg', 'https://preview.redd.it/oq2nr3ye981i1.jpeg?width=960&auto=webp&s=0d1bbe0acf39edd0323840a90f593c29bd333aa3', 960, 960, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xul2o0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0dzlo3ye981i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xul2o0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/thden3ye981i1.jpeg', 'https://preview.redd.it/thden3ye981i1.jpeg?width=960&auto=webp&s=badbc4f14bf0723824a7db2788cf7bce48274221', 960, 1280, 2, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xul2o0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/49kgu2ye981i1.jpeg', NULL, NULL, NULL, 3, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xul2o0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cybcx2ye981i1.jpeg', NULL, NULL, NULL, 4, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xul2o0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/q12b03ye981i1.jpeg', 'https://preview.redd.it/q12b03ye981i1.jpeg?width=960&auto=webp&s=b109e2a33e92c4142bc5a7044fbbdade6ab9d771', 960, 960, 5, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xul2o0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p3nmu3ye981i1.jpeg', NULL, NULL, NULL, 6, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xul2o0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fo4wh4q4gv3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5q56m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ngkueiq4gv3i1.jpeg', 'https://preview.redd.it/ngkueiq4gv3i1.jpeg?width=960&auto=webp&s=1d5222681592ebc68309a615d6f0243346cad53e', 960, 1438, 1, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5q56m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/a804j8q4gv3i1.jpeg', 'https://preview.redd.it/a804j8q4gv3i1.jpeg?width=960&auto=webp&s=652d82e119d55da6f88938c57097317da7ba059a', 960, 1438, 2, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5q56m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sy06j8q4gv3i1.jpeg', 'https://preview.redd.it/sy06j8q4gv3i1.jpeg?width=960&auto=webp&s=38879ef7fb92fff716e53f1bcd3a1c6f20100f9d', 960, 1280, 3, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5q56m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fi0bl6q4gv3i1.jpeg', 'https://preview.redd.it/fi0bl6q4gv3i1.jpeg?width=960&auto=webp&s=b350c4f33a2108441a4125b947b95df0eae5a7ea', 960, 1196, 4, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5q56m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w3psyzkniv3i1.jpeg', 'https://preview.redd.it/w3psyzkniv3i1.jpeg?width=960&auto=webp&s=755262ca557b179c1730bc61379a0afd6ff46446', 960, 960, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5qf2k'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/a3V3bndnbmxydjNpMXD-zBI_9mfMdwHjQD5_PTWP3Cqh8xmwN0urH0dqJRKG.jpeg?format=pjpg&auto=webp&s=5760a04c93ed8083a5d6ecd2d6d03857a66f47f1', NULL, NULL, NULL, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rcet'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/52yxbxciqv3i1.png', NULL, NULL, NULL, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rfw4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4ljrh74kqv3i1.png', NULL, NULL, NULL, 1, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rfw4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pr8f93nqqv3i1.png', NULL, NULL, NULL, 2, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rfw4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f790m8kyqv3i1.png', NULL, NULL, NULL, 3, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rfw4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/090hsiw4rv3i1.png', NULL, NULL, NULL, 4, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rfw4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gnwl5mxarv3i1.png', NULL, NULL, NULL, 5, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rfw4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kkr4qphisv3i1.png', NULL, NULL, NULL, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rfwp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/aik73blisv3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rfwp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k2lyq2nisv3i1.jpeg', 'https://preview.redd.it/k2lyq2nisv3i1.jpeg?width=960&auto=webp&s=1fc31c92830923a4cffbe48eb0da8c7001f1c5b4', 960, 1440, 2, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rfwp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ctnrhwoisv3i1.jpeg', 'https://preview.redd.it/ctnrhwoisv3i1.jpeg?width=960&auto=webp&s=75730c9233cc1d02acaf1ddf4e558c55cb16533d', 960, 718, 3, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5rfwp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qyays2qz3w3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5smpb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k9x8cxrz3w3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5smpb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pwsmx1tz3w3i1.jpeg', NULL, NULL, NULL, 2, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5smpb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/98nxf9uz3w3i1.jpeg', NULL, NULL, NULL, 3, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5smpb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/633qgevz3w3i1.jpeg', NULL, NULL, NULL, 4, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5smpb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/egkgxc7apx3i1.jpeg', 'https://cf.preview.redd.it/egkgxc7apx3i1.jpeg?width=960&auto=webp&s=3fdcd182777cacb879356b86272a77522325065b', 960, 960, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5y3kk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8arwa0bb0y3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5z1fu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wdt8yzab0y3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5z1fu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4se0q0bb0y3i1.jpeg', 'https://preview.redd.it/4se0q0bb0y3i1.jpeg?width=960&auto=webp&s=fb8d803d67b8a4895b81f9ae79cdfcaa65f2e9fd', 960, 640, 2, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5z1fu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ihm8oxdzhy3i1.jpeg', 'https://preview.redd.it/ihm8oxdzhy3i1.jpeg?width=960&auto=webp&s=24d4dbda9177b126848802a41d63f46e77bf911e', 960, 1422, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y60um9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xmuhg4wzhy3i1.jpeg', 'https://preview.redd.it/xmuhg4wzhy3i1.jpeg?width=960&auto=webp&s=4e1b96171cca7442d1136a70ebfa0c842dfe5726', 960, 540, 1, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y60um9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lnhvmh10iy3i1.jpeg', 'https://preview.redd.it/lnhvmh10iy3i1.jpeg?width=960&auto=webp&s=d8df1f3bd6bbcc14dae5c979c844aa82015639a4', 960, 1152, 2, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y60um9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2c4pxg60iy3i1.jpeg', 'https://preview.redd.it/2c4pxg60iy3i1.jpeg?width=960&auto=webp&s=5e9fc83c7b2eae5327e9af7914aed3ea0cf92245', 960, 1279, 3, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y60um9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9s6knyly404i1.png', 'https://preview.redd.it/9s6knyly404i1.png?width=960&auto=webp&s=e78768027c9fa4863e4d377c0133beef440ec986', 960, 540, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y68jrn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oblcsi0z404i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y68jrn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r7xunfez404i1.jpeg', 'https://preview.redd.it/r7xunfez404i1.jpeg?width=960&auto=webp&s=04529fbd6fbb4a7f81e8e2e1c2eeff85e7b9ec6a', 960, 540, 2, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y68jrn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xkjsgte1504i1.png', NULL, NULL, NULL, 3, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y68jrn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/626od454a04i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6a9f2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rplcx7g1514i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cz5q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w3gah4j1514i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cz5q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/armj9dl1514i1.jpeg', NULL, NULL, NULL, 2, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cz5q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pbz4yhp1514i1.jpeg', NULL, NULL, NULL, 3, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cz5q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0pstdtr1514i1.jpeg', NULL, NULL, NULL, 4, '2026-11-27 20:26:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cz5q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
