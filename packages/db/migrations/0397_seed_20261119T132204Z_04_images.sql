-- 0397_seed_20261119T132204Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-19T13:22:38.803320+00:00
-- Run started: 2026-11-19T13:22:04.078867+00:00
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
SELECT p.id, 'https://i.redd.it/cslxa9fm1b2i1.jpeg', 'https://preview.redd.it/cslxa9fm1b2i1.jpeg?width=960&auto=webp&s=ab37e322dc374b959753e587ec5bdc249323e0ad', 960, 540, 0, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz719i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r3yh89fm1b2i1.jpeg', 'https://preview.redd.it/r3yh89fm1b2i1.jpeg?width=960&auto=webp&s=e878e4c60f5517d80dfabb8acfa35696946d9f43', 960, 540, 1, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz719i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7gnd8afm1b2i1.jpeg', 'https://preview.redd.it/7gnd8afm1b2i1.jpeg?width=960&auto=webp&s=1985c0332db1a4a459f82ee7a4185e7163b7d75b', 960, 540, 2, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz719i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i942td28pb2i1.jpeg', 'https://preview.redd.it/i942td28pb2i1.jpeg?width=960&auto=webp&s=3f2a6642f1c2003bb4d55f1a3aeb99a7bff38608', 960, 909, 0, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz949s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kgc0zt98pb2i1.jpeg', 'https://preview.redd.it/kgc0zt98pb2i1.jpeg?width=960&auto=webp&s=c54f7564499660343ee3bd623a809b7bf89b94ac', 960, 886, 1, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz949s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qkaasie8pb2i1.jpeg', 'https://preview.redd.it/qkaasie8pb2i1.jpeg?width=960&auto=webp&s=66831d418be378c3aaa4b86135e6070377ca22aa', 960, 408, 2, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz949s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/afjdw9j8pb2i1.jpeg', 'https://preview.redd.it/afjdw9j8pb2i1.jpeg?width=960&auto=webp&s=86b5e1c52c99f3cc2fe6e42aa3836ab2aa9e0670', 960, 403, 3, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz949s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/u56lavo8pb2i1.jpeg', 'https://preview.redd.it/u56lavo8pb2i1.jpeg?width=960&auto=webp&s=4d6e15fc428a24f82ba16d2b4cb299ac2647262e', 960, 402, 4, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz949s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2ckxakr8pb2i1.jpeg', 'https://preview.redd.it/2ckxakr8pb2i1.jpeg?width=960&auto=webp&s=023566923955634253c5594b1e264ea2dc440a25', 960, 507, 5, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz949s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3qef91u8pb2i1.jpeg', 'https://preview.redd.it/3qef91u8pb2i1.jpeg?width=960&auto=webp&s=072c1950c1c5525fa6c7020a1e4038e53d3d81b5', 960, 498, 6, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz949s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4rszuuw8pb2i1.jpeg', 'https://preview.redd.it/4rszuuw8pb2i1.jpeg?width=960&auto=webp&s=a386dc8dbf98731e3a12078c23d28a2bfe2eecf5', 960, 401, 7, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz949s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/di252fz8pb2i1.png', 'https://preview.redd.it/di252fz8pb2i1.png?width=960&auto=webp&s=1b6a9c2324d717e326ccd76b978eb88f68096317', 960, 540, 8, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz949s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2tli20c9pb2i1.jpeg', 'https://preview.redd.it/2tli20c9pb2i1.jpeg?width=960&auto=webp&s=2183a927c3a05b8d3f3cac379952cf70ec8d03ca', 960, 939, 9, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz949s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/y0kmgp2q0c2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xza3hb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4qw1webq0c2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xza3hb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xqssociq0c2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xza3hb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b88n4plq0c2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xza3hb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i8mul0pq0c2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xza3hb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ugre4xrq0c2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xza3hb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/YjY2MXQ2dWE3YzJpMSeiTFk63PpqbGDkDHd89aY3C6OyQUCrCAO1KuprEyYl.png?format=pjpg&auto=webp&s=b6cb70cad09cbb3086959ce934a925e592db00d9', NULL, NULL, NULL, 0, '2026-11-19 13:22:38', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzancr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
