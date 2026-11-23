-- 0443_seed_20261123T030305Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-23T03:03:39.738928+00:00
-- Run started: 2026-11-23T03:03:05.318691+00:00
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
SELECT p.id, 'https://i.redd.it/rvv2iew29c1i1.jpeg', 'https://preview.redd.it/rvv2iew29c1i1.jpeg?width=960&auto=webp&s=0cbc311eefce2f49ca0df3caa6216cf50162c7d4', 960, 1463, 0, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv2b9n'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9pah8pxb7c1i1.png', NULL, NULL, NULL, 0, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv2bd8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zgosgflc7c1i1.png', NULL, NULL, NULL, 1, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv2bd8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/roi4ocwd7c1i1.png', NULL, NULL, NULL, 2, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv2bd8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pw3t72de7c1i1.png', NULL, NULL, NULL, 3, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv2bd8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d4dvua7f7c1i1.png', NULL, NULL, NULL, 4, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv2bd8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fm76pfpf7c1i1.png', NULL, NULL, NULL, 5, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv2bd8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/is8fed8r8c1i1.png', NULL, NULL, NULL, 6, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv2bd8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rvv2iew29c1i1.jpeg', 'https://preview.redd.it/rvv2iew29c1i1.jpeg?width=960&auto=webp&s=0cbc311eefce2f49ca0df3caa6216cf50162c7d4', 960, 1463, 0, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv2x93'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/eW00NmVjbzczMjNpMVdRUCkci9m78G0BrHEWZFzysPZm9GiXGW2qdvnHTaFV.jpeg?format=pjpg&auto=webp&s=6995c86c8c87394546cfad17fc7e7e21cace6f67', NULL, NULL, NULL, 0, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2bh3s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/eca4o5kph33i1.jpeg', NULL, NULL, NULL, 0, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2gum4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7dwwsioph33i1.jpeg', NULL, NULL, NULL, 1, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2gum4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/izxra7rph33i1.jpeg', NULL, NULL, NULL, 2, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2gum4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d3umautph33i1.jpeg', NULL, NULL, NULL, 3, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2gum4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/og8z2l9nm43i1.jpeg', NULL, NULL, NULL, 0, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2kohu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9dfg5l9nm43i1.jpeg', 'https://preview.redd.it/9dfg5l9nm43i1.jpeg?width=960&auto=webp&s=02656300c18400935fc17770c7fc0951f98d5881', 960, 960, 1, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2kohu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mqxc4y5m773i1.jpeg', 'https://preview.redd.it/mqxc4y5m773i1.jpeg?width=960&auto=webp&s=f22170f4d592454e4d0bbc05cda714f3ebbb499f', 960, 1280, 0, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2uoek'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/avn5g1mm773i1.jpeg', NULL, NULL, NULL, 1, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2uoek'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/an6ryp9n773i1.jpeg', 'https://preview.redd.it/an6ryp9n773i1.jpeg?width=960&auto=webp&s=21979c03d07597c175f351aa403e66263482f634', 960, 1395, 2, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2uoek'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/atf9b1gn773i1.jpeg', NULL, NULL, NULL, 3, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2uoek'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vlurq4xxd73i1.jpeg', NULL, NULL, NULL, 0, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2vig9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sxwxrd0yd73i1.jpeg', NULL, NULL, NULL, 1, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2vig9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7nb3in3yd73i1.jpeg', NULL, NULL, NULL, 2, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2vig9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/imzm8u7yd73i1.jpeg', NULL, NULL, NULL, 3, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2vig9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cyqcqp9yd73i1.jpeg', 'https://preview.redd.it/cyqcqp9yd73i1.jpeg?width=960&auto=webp&s=4f9884150b7c89db858b9e066c6acffa0fb215dd', 960, 817, 4, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2vig9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b7fa27e2x73i1.jpeg', 'https://cf.preview.redd.it/b7fa27e2x73i1.jpeg?width=960&auto=webp&s=c84031348d8bab9bf0af586e2ca7c3cacb38d64c', 960, 637, 0, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y3ru'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1lwv2ol2x73i1.jpeg', 'https://cf.preview.redd.it/1lwv2ol2x73i1.jpeg?width=960&auto=webp&s=c5f31cc8089a014257287fa73f09f25ac2a716f9', 960, 397, 1, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y3ru'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rnwowos2x73i1.jpeg', 'https://cf.preview.redd.it/rnwowos2x73i1.jpeg?width=960&auto=webp&s=cdb5159a6b081711b213ee2ae928ac00f47ffaf8', 960, 532, 2, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y3ru'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d7s3s4z2x73i1.jpeg', 'https://cf.preview.redd.it/d7s3s4z2x73i1.jpeg?width=960&auto=webp&s=b2a5b644e703df6b588733e216759fbf6692e7fb', 960, 617, 3, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y3ru'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/78h0ro13x73i1.jpeg', 'https://cf.preview.redd.it/78h0ro13x73i1.jpeg?width=960&auto=webp&s=0ebe76ee006475decf7f364c31a04408e3f57c8f', 960, 529, 4, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y3ru'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bx030443x73i1.jpeg', 'https://cf.preview.redd.it/bx030443x73i1.jpeg?width=960&auto=webp&s=e84597d135027dcc75f1b9e3d7756dc51dc9a6d1', 960, 737, 5, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y3ru'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rv15vmb3x73i1.jpeg', 'https://cf.preview.redd.it/rv15vmb3x73i1.jpeg?width=960&auto=webp&s=26fe096ab05925fce9c135b923175a60c22bb80e', 960, 614, 6, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y3ru'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/11grn5f3x73i1.jpeg', 'https://cf.preview.redd.it/11grn5f3x73i1.jpeg?width=960&auto=webp&s=bf4aadb4cbe90f21c7d45a3ae859434a93bcf46f', 960, 401, 7, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y3ru'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/65vzllgc383i1.jpeg', 'https://preview.redd.it/65vzllgc383i1.jpeg?width=960&auto=webp&s=c63b47920173fda1c60ba0f5b73f4b59a425b4cf', 960, 610, 0, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8abrudgc383i1.jpeg', NULL, NULL, NULL, 1, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rhqkopfc383i1.jpeg', 'https://preview.redd.it/rhqkopfc383i1.jpeg?width=960&auto=webp&s=829c94cf483c55f693eff39ae56d902cbb30baa8', 960, 640, 2, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7dssajgc383i1.jpeg', 'https://preview.redd.it/7dssajgc383i1.jpeg?width=960&auto=webp&s=e61e4045a4db13c701ed1ca6a9ba9961954bdb40', 960, 685, 3, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e11lahgc383i1.jpeg', NULL, NULL, NULL, 4, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pxed0wfc383i1.jpeg', 'https://preview.redd.it/pxed0wfc383i1.jpeg?width=960&auto=webp&s=318924bf085c025e0a184f21127deebbd19c5462', 960, 632, 5, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8jkun1gc383i1.jpeg', 'https://preview.redd.it/8jkun1gc383i1.jpeg?width=960&auto=webp&s=f190374ed8bd225dcb00c30a59a0363f99e51883', 960, 543, 6, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0yaxsdgc383i1.jpeg', NULL, NULL, NULL, 7, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ayfjipfc383i1.jpeg', NULL, NULL, NULL, 8, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7mt0usfc383i1.jpeg', NULL, NULL, NULL, 9, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z1s90ufc383i1.jpeg', NULL, NULL, NULL, 10, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7iv9kvfc383i1.jpeg', NULL, NULL, NULL, 11, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p0cxqxfc383i1.jpeg', NULL, NULL, NULL, 12, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kcjhh3gc383i1.jpeg', NULL, NULL, NULL, 13, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s0yog1gc383i1.jpeg', NULL, NULL, NULL, 14, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/u5q5l7gc383i1.jpeg', 'https://preview.redd.it/u5q5l7gc383i1.jpeg?width=960&auto=webp&s=c437b43ff1755d8cd8300d670ed07097b37930d8', 960, 532, 15, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/93fefagc383i1.jpeg', 'https://preview.redd.it/93fefagc383i1.jpeg?width=960&auto=webp&s=6223f272d6c0b0d6ce51f0e1185cde3fe6110650', 960, 533, 16, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kgd6o5hc383i1.jpeg', 'https://preview.redd.it/kgd6o5hc383i1.jpeg?width=960&auto=webp&s=c772c1d38e127e2d170443a7bd315c66354fc25a', 960, 1280, 17, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zozakxgc383i1.jpeg', 'https://preview.redd.it/zozakxgc383i1.jpeg?width=960&auto=webp&s=80aa016fb83f6fe8a455287f53616e734bc19886', 960, 620, 18, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/umk4ic2um83i1.png', 'https://preview.redd.it/umk4ic2um83i1.png?width=960&auto=webp&s=6fc43d01cb48e72e2aef55a420ca7f9eca75ca71', 960, 1248, 0, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31gmz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bj720k7mk83i1.jpeg', 'https://preview.redd.it/bj720k7mk83i1.jpeg?width=960&auto=webp&s=4ee83635d1decb05e04c2517ac4d94667ae2c904', 960, 1500, 0, '2026-11-23 03:03:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y32tw5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
