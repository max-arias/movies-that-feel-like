-- 0232_seed_20261016T225916Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-16T22:59:46.974158+00:00
-- Run started: 2026-10-16T22:59:16.158119+00:00
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
SELECT p.id, 'https://i.redd.it/jyedcc6vijvh1.jpg', NULL, NULL, NULL, 0, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69t0a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/v7cadf6vijvh1.jpg', 'https://cf.preview.redd.it/v7cadf6vijvh1.jpg?width=960&auto=webp&s=89d92ab8d7d948f9ca0cd4f756dde7f186ed7e1c', 960, 1195, 1, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69t0a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/96y78c6vijvh1.jpg', NULL, NULL, NULL, 2, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69t0a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/eeuh2e6vijvh1.jpg', NULL, NULL, NULL, 3, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69t0a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/g4pnrj6vijvh1.jpg', NULL, NULL, NULL, 4, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69t0a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l60txl2gnjvh1.jpg', 'https://preview.redd.it/l60txl2gnjvh1.jpg?width=960&auto=webp&s=c88d3e42bed3dfc9633269e0782b72827aacc1f9', 960, 1459, 0, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ab2p'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jv655d2gnjvh1.jpg', 'https://preview.redd.it/jv655d2gnjvh1.jpg?width=960&auto=webp&s=d07930ad4ff583c21d4b383ebee028522b992c9f', 960, 1363, 1, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ab2p'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/o1sjed2gnjvh1.jpg', NULL, NULL, NULL, 2, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ab2p'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xcgwkd2gnjvh1.jpg', NULL, NULL, NULL, 3, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ab2p'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d9yl1d2gnjvh1.jpg', NULL, NULL, NULL, 4, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ab2p'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/plobwcqhnjvh1.jpg', NULL, NULL, NULL, 0, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ab8b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s0xnhbqhnjvh1.jpg', NULL, NULL, NULL, 1, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ab8b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/o6lbrcqhnjvh1.jpg', NULL, NULL, NULL, 2, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ab8b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/shoyb0o7ojvh1.jpg', NULL, NULL, NULL, 0, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ae2q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/855ghur7ojvh1.jpg', NULL, NULL, NULL, 1, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ae2q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5tsmvet7ojvh1.jpg', NULL, NULL, NULL, 2, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ae2q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3ir6muu7ojvh1.jpg', NULL, NULL, NULL, 3, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ae2q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/97htpgw7ojvh1.jpg', NULL, NULL, NULL, 4, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ae2q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hpb4pux7ojvh1.jpg', NULL, NULL, NULL, 5, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ae2q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d5hrt6z7ojvh1.jpg', NULL, NULL, NULL, 6, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6ae2q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p93rz20xojvh1.jpg', NULL, NULL, NULL, 0, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5lat5w3xojvh1.jpg', NULL, NULL, NULL, 1, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/682ply9xojvh1.jpg', NULL, NULL, NULL, 2, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/iwb1ayexojvh1.jpg', NULL, NULL, NULL, 3, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/iiadfcixojvh1.jpg', NULL, NULL, NULL, 4, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gwy113lxojvh1.jpg', NULL, NULL, NULL, 5, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sslbstnxojvh1.jpg', NULL, NULL, NULL, 6, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uz6t34rxojvh1.jpg', NULL, NULL, NULL, 7, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wfbdluuxojvh1.jpg', NULL, NULL, NULL, 8, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e0th6vzxojvh1.jpg', NULL, NULL, NULL, 9, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x7wcgx2yojvh1.jpg', NULL, NULL, NULL, 10, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4xa21m5yojvh1.jpg', NULL, NULL, NULL, 11, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4w7rqg8yojvh1.jpg', NULL, NULL, NULL, 12, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nryq34byojvh1.jpg', NULL, NULL, NULL, 13, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5zwx6ieyojvh1.jpg', NULL, NULL, NULL, 14, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wraz8kiyojvh1.jpg', NULL, NULL, NULL, 15, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cb5oqhlyojvh1.jpg', NULL, NULL, NULL, 16, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x8u5c8oyojvh1.jpg', NULL, NULL, NULL, 17, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jnf3m3ryojvh1.jpg', NULL, NULL, NULL, 18, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k87fz1uyojvh1.jpg', NULL, NULL, NULL, 19, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6agyc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bi3hoamfxlvh1.jpg', NULL, NULL, NULL, 0, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6hz1j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fdx63sofxlvh1.jpg', NULL, NULL, NULL, 1, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6hz1j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fkz8obqfxlvh1.jpg', NULL, NULL, NULL, 2, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6hz1j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s88luhsfxlvh1.jpg', NULL, NULL, NULL, 3, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6hz1j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4w7ukoufxlvh1.jpg', NULL, NULL, NULL, 4, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6hz1j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/03bpmxcq0pvh1.jpg', 'https://preview.redd.it/03bpmxcq0pvh1.jpg?width=960&auto=webp&s=14ee478731162a91f4d96895ad969e25aaaaa467', 960, 1278, 0, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6x32m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nrbmw2gq0pvh1.jpg', 'https://preview.redd.it/nrbmw2gq0pvh1.jpg?width=960&auto=webp&s=0247474bac4998b1963fef08d7c7bd9d5f81cdb8', 960, 1282, 1, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6x32m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/33yxd7iq0pvh1.jpg', 'https://preview.redd.it/33yxd7iq0pvh1.jpg?width=960&auto=webp&s=2e57c64d08d80843cfed6d512889eb75cb4a55d1', 960, 1282, 2, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6x32m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nzl90ujq0pvh1.jpg', 'https://preview.redd.it/nzl90ujq0pvh1.jpg?width=960&auto=webp&s=3af1b0e19ec984fa452e9c451023cd5d3925e53f', 960, 1278, 3, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6x32m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xwwn9wlq0pvh1.jpg', 'https://preview.redd.it/xwwn9wlq0pvh1.jpg?width=960&auto=webp&s=736bc3f9ceb24fdd619f6461662729866bd66a90', 960, 1278, 4, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6x32m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zx43e9oq0pvh1.jpg', 'https://preview.redd.it/zx43e9oq0pvh1.jpg?width=960&auto=webp&s=2a2b0c037b529d4d142dc7b8b652854f2384e433', 960, 1280, 5, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6x32m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fo62hmt98pvh1.jpeg', 'https://preview.redd.it/fo62hmt98pvh1.jpeg?width=960&auto=webp&s=d3131ef76cf6917b869e5550aa7feac30e803aae', 960, 646, 0, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6y4es'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jqqv4lxfipvh1.jpg', 'https://preview.redd.it/jqqv4lxfipvh1.jpg?width=960&auto=webp&s=5014fd3bcc9c3b4472185f61646ad384f0cb98e4', 960, 1278, 0, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zfqf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fbbk7lxfipvh1.jpg', 'https://preview.redd.it/fbbk7lxfipvh1.jpg?width=960&auto=webp&s=ab54e99783b2dc9b2fde3c2c5c87c6021eaf75f0', 960, 1278, 1, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zfqf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4n6dykxfipvh1.jpg', NULL, NULL, NULL, 2, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zfqf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xc71skxfipvh1.jpg', NULL, NULL, NULL, 3, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zfqf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9d5kglxfipvh1.jpg', NULL, NULL, NULL, 4, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zfqf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6lldm0tbmpvh1.jpg', NULL, NULL, NULL, 0, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zxg8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1ne5h1tbmpvh1.jpg', NULL, NULL, NULL, 1, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zxg8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/bkK_cWCEGGOPvrDNCLh3WGsjDH-P9mRW1fTuD6JgmCo.jpeg?format=pjpg&auto=webp&s=b0e0ab25cd05d7827c09d1d012d6dafaae15eba7', NULL, NULL, NULL, 0, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6zxvx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/q9klqe5qqpvh1.jpg', NULL, NULL, NULL, 0, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x70h6y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tticwd5qqpvh1.jpg', NULL, NULL, NULL, 1, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x70h6y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wlor3f5qqpvh1.jpg', NULL, NULL, NULL, 2, '2026-10-16 22:59:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x70h6y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
