-- 0242_seed_20261017T121712Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-17T12:17:44.316520+00:00
-- Run started: 2026-10-17T12:17:12.269707+00:00
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
SELECT p.id, 'https://i.redd.it/oca83a3nhjvh1.jpg', 'https://preview.redd.it/oca83a3nhjvh1.jpg?width=960&auto=webp&s=7ae1f5368a64b9b0e9ebc2f93369aaa91690a644', 960, 432, 0, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69o6y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0wk1r06nhjvh1.jpg', 'https://preview.redd.it/0wk1r06nhjvh1.jpg?width=960&auto=webp&s=1b77afcee6ffee53c281cb142b28a29758dccba4', 960, 432, 1, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69o6y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rsokm07nhjvh1.jpg', 'https://preview.redd.it/rsokm07nhjvh1.jpg?width=960&auto=webp&s=c6d7d90fc21d537b94223adcd6627de6bcb6d5ae', 960, 432, 2, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69o6y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0qtwrj8nhjvh1.jpg', NULL, NULL, NULL, 3, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69o6y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h61n1c9nhjvh1.jpg', NULL, NULL, NULL, 4, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69o6y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zpx6t2anhjvh1.jpg', 'https://preview.redd.it/zpx6t2anhjvh1.jpg?width=960&auto=webp&s=635b41f3551f5ffe308dee64f26a49aa937b5cbf', 960, 642, 5, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69o6y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/48q5n0tnzpvh1.png', NULL, NULL, NULL, 0, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x71kh7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jpy6fum47qvh1.jpg', NULL, NULL, NULL, 0, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x72ict'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kwoohum47qvh1.jpg', NULL, NULL, NULL, 1, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x72ict'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4qr12vm47qvh1.jpg', NULL, NULL, NULL, 2, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x72ict'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3rf9vum47qvh1.jpg', NULL, NULL, NULL, 3, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x72ict'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6duy4um47qvh1.jpg', 'https://preview.redd.it/6duy4um47qvh1.jpg?width=960&auto=webp&s=e90a46196607b615d428f452aa6733905b8638cb', 960, 711, 4, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x72ict'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xkp71vm47qvh1.jpg', NULL, NULL, NULL, 5, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x72ict'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/dT_hqCK_t9kXazAdGovoaaMXCapTF38nHJ0TeV5nCDs.png?auto=webp&s=bd1b146994bfde1d2d6fe5d5d80daa0b1312f9e8', 'https://external-preview.redd.it/dT_hqCK_t9kXazAdGovoaaMXCapTF38nHJ0TeV5nCDs.png?width=960&auto=webp&s=150d6a3a8dcd76898a554a0a428ea86bdc7df99b', 960, 504, 0, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x732m6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lz20von6dqvh1.jpg', 'https://preview.redd.it/lz20von6dqvh1.jpg?width=960&auto=webp&s=b95a993afd8354598e65cf063d8eade013cf0869', 960, 443, 0, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x734pn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jj28ukn6dqvh1.jpg', 'https://preview.redd.it/jj28ukn6dqvh1.jpg?width=960&auto=webp&s=58f879eb117e8560c15a83d479ecc9cdc787782e', 960, 443, 1, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x734pn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7sg45ln6dqvh1.jpg', 'https://preview.redd.it/7sg45ln6dqvh1.jpg?width=960&auto=webp&s=fd2a93d67790a5c05c45f22a76482209cc912489', 960, 443, 2, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x734pn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/062eotn6dqvh1.jpg', 'https://preview.redd.it/062eotn6dqvh1.jpg?width=960&auto=webp&s=4341364d73af4d65aab7b78dff088d3e9ad76844', 960, 443, 3, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x734pn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yp30ukn6dqvh1.jpg', 'https://preview.redd.it/yp30ukn6dqvh1.jpg?width=960&auto=webp&s=bc51c6632f0031c8f9cec92bb8f672588b9882d6', 960, 443, 4, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x734pn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b0k0ekn6dqvh1.jpg', 'https://preview.redd.it/b0k0ekn6dqvh1.jpg?width=960&auto=webp&s=086ac979c2f7b475e19a70fd50944191d8469aeb', 960, 443, 5, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x734pn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/m7sf9ln6dqvh1.jpg', 'https://preview.redd.it/m7sf9ln6dqvh1.jpg?width=960&auto=webp&s=e08847d40f6075b42a6e3c1d0a4ea928aeb0e207', 960, 443, 6, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x734pn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/c6c1jxo6dqvh1.jpg', 'https://preview.redd.it/c6c1jxo6dqvh1.jpg?width=960&auto=webp&s=9b8cef5d720f59e42c60a412f119d080cbc878a4', 960, 443, 7, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x734pn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qy61nln6dqvh1.jpg', 'https://preview.redd.it/qy61nln6dqvh1.jpg?width=960&auto=webp&s=a8c5b2e686532cc1b9472f7a562e56f4e3bb8bcb', 960, 443, 8, '2026-10-17 12:17:44', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x734pn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
