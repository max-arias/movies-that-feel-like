-- 0252_seed_20261017T183929Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-17T18:39:57.272142+00:00
-- Run started: 2026-10-17T18:39:29.405187+00:00
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
SELECT p.id, 'https://external-preview.redd.it/kVEQGOq-93pFUn2FtkO7R_QRwHYl5nUPDbgYx6-4UTk.jpeg?auto=webp&s=e35b62d5772e36336e4fdbf1779e7bbcd886d7f2', NULL, NULL, NULL, 0, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x36pvt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/7okjttlriuuh1.jpg?width=1200&format=pjpg&auto=webp&s=a0f7b89553d8ea49f2f67b2438621faf3c405b32', 'https://preview.redd.it/7okjttlriuuh1.jpg?width=960&crop=smart&auto=webp&s=74752cd569f1daf4b3b6bf835a07fd6af7a5ac24', 960, 496, 0, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x396i9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/3b8xsslriuuh1.jpg?width=702&format=pjpg&auto=webp&s=3438f2e10446993b78188b331750956ec4620b4f', NULL, NULL, NULL, 1, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x396i9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/41bnwslriuuh1.jpg?width=825&format=pjpg&auto=webp&s=48af7a51d2c5549222876f6f5ef6432dc6a86680', NULL, NULL, NULL, 2, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x396i9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ze712tlriuuh1.jpg?width=650&format=pjpg&auto=webp&s=351ef3c6c7b245187fef2f1a60d554069f8f8384', NULL, NULL, NULL, 3, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x396i9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/marf7tlriuuh1.jpg?width=650&format=pjpg&auto=webp&s=9d4a5a0751889125d77cbcbf4318735327babdc8', NULL, NULL, NULL, 4, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x396i9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/9b34egd67vuh1.png?width=702&format=png&auto=webp&s=c317d5790e941684dde2f88e43b64cbb951ec4ee', NULL, NULL, NULL, 0, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3cksr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/l76xogd67vuh1.png?width=568&format=png&auto=webp&s=6da7a2b35f49b0c52f2f385a7644d54487187fb9', NULL, NULL, NULL, 1, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3cksr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/2tn9kzh77vuh1.png?width=1353&format=png&auto=webp&s=8a25185ebce77ad5a33891bcb6a8db80c6302d6b', 'https://preview.redd.it/2tn9kzh77vuh1.png?width=960&crop=smart&auto=webp&s=32d500b6fb76a2f115902a15af3d47706141d952', 960, 611, 2, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3cksr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f6spf673avuh1.jpeg', 'https://preview.redd.it/f6spf673avuh1.jpeg?width=960&crop=smart&auto=webp&s=a406b1ee9f84973ff736ee9624438db158744721', 960, 1440, 0, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3cxmu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/r91yjfyvhwuh1.jpg?width=610&format=pjpg&auto=webp&s=ec0e6f062a232ccda08439b4a06a120de2e1f84e', NULL, NULL, NULL, 0, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ymssleyvhwuh1.jpg?width=1200&format=pjpg&auto=webp&s=a0598d7becf1ce013928e96a423439c089677464', 'https://preview.redd.it/ymssleyvhwuh1.jpg?width=960&crop=smart&auto=webp&s=fc57f2cc16f805b6e17f5e248b08ee89429b355d', 960, 720, 1, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/3ocj4eyvhwuh1.jpg?width=736&format=pjpg&auto=webp&s=cfb4e6024faa3c8b3a22d6e0af4ad288478fc950', NULL, NULL, NULL, 2, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/g9aa4gyvhwuh1.jpg?width=750&format=pjpg&auto=webp&s=d356a1d96e85ddad9b124a4b85e75bedbbcaba6e', NULL, NULL, NULL, 3, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/4xv94eyvhwuh1.jpg?width=500&format=pjpg&auto=webp&s=609cb382cbf220d16582699b5aa63990bd04655e', NULL, NULL, NULL, 4, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/wtxf7fyvhwuh1.jpg?width=500&format=pjpg&auto=webp&s=fb9e3733cc32500ceaebb18348e4dab70dd343b6', NULL, NULL, NULL, 5, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/rfztleyvhwuh1.jpg?width=1200&format=pjpg&auto=webp&s=ea27c269ea8e8d8a5c5a0d8c097509807061984d', 'https://preview.redd.it/rfztleyvhwuh1.jpg?width=960&crop=smart&auto=webp&s=0c8456987facfc454f37cebaf08442ef1dff202a', 960, 960, 6, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/dvahyfyvhwuh1.jpg?width=736&format=pjpg&auto=webp&s=afdfa9248bbddc1e5114c222e7b5305b07125fc4', NULL, NULL, NULL, 7, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j3zt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mhh0sakaiwuh1.jpeg', 'https://preview.redd.it/mhh0sakaiwuh1.jpeg?width=960&crop=smart&auto=webp&s=ddb2f3a51446982253b1972df4eca248ef48db0d', 960, 1280, 0, '2026-10-17 18:39:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3j5ze'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
