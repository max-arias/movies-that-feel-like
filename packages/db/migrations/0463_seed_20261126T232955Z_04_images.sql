-- 0463_seed_20261126T232955Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-26T23:30:20.871654+00:00
-- Run started: 2026-11-26T23:29:55.940308+00:00
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
SELECT p.id, 'https://i.redd.it/88z0cmaog81i1.jpeg', 'https://preview.redd.it/88z0cmaog81i1.jpeg?width=960&auto=webp&s=d071330238566a0411ff788a1a1efb2aabc7a4c4', 960, 663, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xum6ps'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t7944naog81i1.jpeg', 'https://preview.redd.it/t7944naog81i1.jpeg?width=960&auto=webp&s=3ac379cb4b098b33e674ff94f41b0a6dd5e505fe', 960, 650, 1, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xum6ps'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qwaikoaog81i1.jpeg', 'https://preview.redd.it/qwaikoaog81i1.jpeg?width=960&auto=webp&s=bc7dc762fff99742ff52916bffd6d922280fc8fb', 960, 540, 2, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xum6ps'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ccvdwcbog81i1.jpeg', 'https://preview.redd.it/ccvdwcbog81i1.jpeg?width=960&auto=webp&s=2de5e350bc867f0afb7fa9a2961ae0ddecaa9d03', 960, 540, 3, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xum6ps'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9i4g3qaog81i1.jpeg', 'https://preview.redd.it/9i4g3qaog81i1.jpeg?width=960&auto=webp&s=c2f8facd8200d564ead9c5ecb722228315502a0b', 960, 456, 4, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xum6ps'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yq37ndbog81i1.jpeg', 'https://preview.redd.it/yq37ndbog81i1.jpeg?width=960&auto=webp&s=d5ecc8a25187762933a27499882a27a663b967b6', 960, 540, 5, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xum6ps'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5xpmglsam81i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xun1e1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/o4d385xam81i1.jpeg', NULL, NULL, NULL, 1, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xun1e1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/50awx00bm81i1.jpeg', NULL, NULL, NULL, 2, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xun1e1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b16dliwjb91i1.jpeg', 'https://cf.preview.redd.it/b16dliwjb91i1.jpeg?width=960&auto=webp&s=d07d70e11576b7e55b3b1f52cc6101cce92e4716', 960, 1200, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuqlzr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/j6aoisc3w11i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sn7h7sc3w11i1.jpeg', 'https://preview.redd.it/sn7h7sc3w11i1.jpeg?width=960&auto=webp&s=097cde934c4de63b8523db37fe2c3f4b88ee7f88', 960, 1200, 1, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/00w5jsc3w11i1.jpeg', NULL, NULL, NULL, 2, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/33ekhsc3w11i1.jpeg', NULL, NULL, NULL, 3, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t80cysc3w11i1.jpeg', NULL, NULL, NULL, 4, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cjnjcsc3w11i1.jpeg', 'https://preview.redd.it/cjnjcsc3w11i1.jpeg?width=960&auto=webp&s=b8a7b5dca884aaff42d57b47b71e5fc8ec076c72', 960, 1440, 5, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pijrlsc3w11i1.jpeg', NULL, NULL, NULL, 6, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xdspysc3w11i1.jpeg', NULL, NULL, NULL, 7, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/u5qyy1d3w11i1.jpeg', 'https://preview.redd.it/u5qyy1d3w11i1.jpeg?width=960&auto=webp&s=f08d2f5e791153a1c257f8a8d8b5b44deaeeb605', 960, 1440, 8, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ssbq2tc3w11i1.jpeg', NULL, NULL, NULL, 9, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2l614tc3w11i1.jpeg', NULL, NULL, NULL, 10, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/u32hstc3w11i1.jpeg', 'https://preview.redd.it/u32hstc3w11i1.jpeg?width=960&auto=webp&s=ba8c7ed33ea676a67468a9b776f9fc3b1e91ca2a', 960, 1279, 11, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2y5lytc3w11i1.jpeg', NULL, NULL, NULL, 12, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/iiffa0d3w11i1.jpeg', NULL, NULL, NULL, 13, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9jjf8tc3w11i1.jpeg', NULL, NULL, NULL, 14, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6vvuetc3w11i1.jpeg', NULL, NULL, NULL, 15, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gm7hktc3w11i1.jpeg', 'https://preview.redd.it/gm7hktc3w11i1.jpeg?width=960&auto=webp&s=d1016cea381823988a6906ac5cbd326d9039a497', 960, 720, 16, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f9cyatc3w11i1.jpeg', NULL, NULL, NULL, 17, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cj5zdtc3w11i1.jpeg', 'https://preview.redd.it/cj5zdtc3w11i1.jpeg?width=960&auto=webp&s=b77f65af63f6f68e660f726f990a1b11f1854777', 960, 720, 18, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qpfciuc3w11i1.jpeg', NULL, NULL, NULL, 19, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/44-9Zn6VXZuMhFkY_YRtNqz98dM1VzyqUW13am_uotQ.jpeg?format=pjpg&auto=webp&s=c717c20fb03ab152e908c851bd0c04a064c3a901', NULL, NULL, NULL, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xutna4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/eqmpnocdaa1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuuytz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ygu88qcdaa1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuuytz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ccv11qcdaa1i1.jpeg', 'https://preview.redd.it/ccv11qcdaa1i1.jpeg?width=960&auto=webp&s=aff28504412704415679e8c801962dc89c04c4ac', 960, 800, 2, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuuytz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b6h5uocdaa1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuuytz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2nd0yocdaa1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuuytz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/R0G_ihJmdd9y8PN0RmlizGF-M2qc0MshTbEQt0H-pWo.jpeg?auto=webp&s=51291951dfc01f4e7523bcabb196b1e0ce328c2a', NULL, NULL, NULL, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuv6vn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x9ix0jihca1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuv7dh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2t71btxuza1i1.jpeg', 'https://preview.redd.it/2t71btxuza1i1.jpeg?width=960&auto=webp&s=70fd75b86b681164abe82f59d7b52aff66d7f631', 960, 519, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuxuwi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pu8bco2vza1i1.jpeg', 'https://preview.redd.it/pu8bco2vza1i1.jpeg?width=960&auto=webp&s=cc9ce8cbc062398c51e57fde6da74c480552d29c', 960, 627, 1, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuxuwi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3bvhfr8vza1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuxuwi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/887dpbcvza1i1.png', 'https://preview.redd.it/887dpbcvza1i1.png?width=960&auto=webp&s=20d861a81429ab1347a14c664845251c559434ce', 960, 540, 3, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuxuwi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tdq7d3hvza1i1.jpeg', 'https://preview.redd.it/tdq7d3hvza1i1.jpeg?width=960&auto=webp&s=f98de7c9a5941c2c3373bb873965a329da32dec2', 960, 540, 4, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuxuwi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/krbuosivza1i1.jpeg', 'https://preview.redd.it/krbuosivza1i1.jpeg?width=960&auto=webp&s=f1e26dc0ba31bfab7a1e5d22fc199a8a2a02d60c', 960, 720, 5, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuxuwi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ewuulhkvza1i1.jpeg', 'https://preview.redd.it/ewuulhkvza1i1.jpeg?width=960&auto=webp&s=9a9f1a7d03ca406ba19e76affadfe92371d9c26c', 960, 720, 6, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuxuwi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p9yqydnvza1i1.jpeg', 'https://preview.redd.it/p9yqydnvza1i1.jpeg?width=960&auto=webp&s=422038c28aef82028bf002a44f23a56df9067196', 960, 536, 7, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuxuwi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/do303upvza1i1.jpeg', NULL, NULL, NULL, 8, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuxuwi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nlzj6hdus93i1.jpeg', 'https://preview.redd.it/nlzj6hdus93i1.jpeg?width=960&auto=webp&s=1db3b84c704266525740dd7dd7dfd883495441b7', 960, 1417, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y36c7t'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3f1oyidus93i1.jpeg', 'https://preview.redd.it/3f1oyidus93i1.jpeg?width=960&auto=webp&s=7d911c8f32c86c992005dcb8097f35b678111563', 960, 1439, 1, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y36c7t'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/q39wrgdus93i1.jpeg', 'https://preview.redd.it/q39wrgdus93i1.jpeg?width=960&auto=webp&s=1b763cf7b8eccd291db1deae8739f168cf9d7e34', 960, 1440, 2, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y36c7t'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/epbw09jqo73i1.png', NULL, NULL, NULL, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y38ycw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/toaim8vqo73i1.png', NULL, NULL, NULL, 1, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y38ycw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kbp18i4ro73i1.png', NULL, NULL, NULL, 2, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y38ycw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4nrvywbvta3i1.png', 'https://preview.redd.it/4nrvywbvta3i1.png?width=960&auto=webp&s=7e9314a3c7fd73581d5b5fb6c2b7107af761c939', 960, 464, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3a8fk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8iz2zlgvta3i1.png', 'https://preview.redd.it/8iz2zlgvta3i1.png?width=960&auto=webp&s=a80f21dc0a26dc19f6200d4e2b997c1f746b19f5', 960, 609, 1, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3a8fk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9fj59ykvta3i1.jpeg', 'https://preview.redd.it/9fj59ykvta3i1.jpeg?width=960&auto=webp&s=daedce943c1d19ddfa4c5f6e887f7c449842346b', 960, 480, 2, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3a8fk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/o6u4g3nvta3i1.png', 'https://preview.redd.it/o6u4g3nvta3i1.png?width=960&auto=webp&s=2dd85d1fbb6aa5507f82272b694763c9b2ac60b6', 960, 485, 3, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3a8fk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n8bgi2svta3i1.jpeg', 'https://preview.redd.it/n8bgi2svta3i1.jpeg?width=960&auto=webp&s=32ffe5658c5f6cc5964f021c7ea40a45f7354a6e', 960, 562, 4, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3a8fk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ghkqbtctgb3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3cd6z'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/48knxsctgb3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3cd6z'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4hb0atctgb3i1.jpeg', NULL, NULL, NULL, 2, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3cd6z'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0p4petctgb3i1.jpeg', NULL, NULL, NULL, 3, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3cd6z'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lk9ictctgb3i1.jpeg', 'https://preview.redd.it/lk9ictctgb3i1.jpeg?width=960&auto=webp&s=10ff072fe8b5050915adcb14a87482d2a1e65bd4', 960, 1440, 4, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3cd6z'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/c1kxxsctgb3i1.jpeg', 'https://preview.redd.it/c1kxxsctgb3i1.jpeg?width=960&auto=webp&s=f616e91095a542d11ba9b7ae71cc098f54b2cd11', 960, 1280, 5, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3cd6z'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k9xa1tctgb3i1.jpeg', 'https://preview.redd.it/k9xa1tctgb3i1.jpeg?width=960&auto=webp&s=7197ab27e8e81870e71a961c1dca38b3ece0df1a', 960, 1279, 6, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3cd6z'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fqw5mxctgb3i1.jpeg', NULL, NULL, NULL, 7, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3cd6z'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nmg3vsctgb3i1.jpeg', NULL, NULL, NULL, 8, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3cd6z'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/y2673no7kb3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3co6y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ueryvmr7kb3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3co6y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/938kl1t7kb3i1.jpeg', NULL, NULL, NULL, 2, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3co6y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n671vdu7kb3i1.jpeg', NULL, NULL, NULL, 3, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3co6y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1s6fgjv7kb3i1.jpeg', NULL, NULL, NULL, 4, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3co6y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kc7be9veoc3i1.jpeg', 'https://preview.redd.it/kc7be9veoc3i1.jpeg?width=960&auto=webp&s=9f63f6ec59369d5c5118524833f1ae95dee4f7b5', 960, 1447, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3ga2v'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fvqsrhuq1e3i1.png', NULL, NULL, NULL, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3mmwo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tygtiagq6e3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nd31'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/iwmy4zkq6e3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nd31'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mq3dmopq6e3i1.jpeg', NULL, NULL, NULL, 2, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nd31'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h3sp8isq6e3i1.jpeg', NULL, NULL, NULL, 3, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nd31'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n17zm5q8ae3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nyvg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cw7cr5q8ae3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nyvg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/673q86q8ae3i1.jpeg', NULL, NULL, NULL, 2, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nyvg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/be6m97q8ae3i1.jpeg', NULL, NULL, NULL, 3, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nyvg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f46696q8ae3i1.jpeg', NULL, NULL, NULL, 4, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nyvg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ylkoy5q8ae3i1.jpeg', NULL, NULL, NULL, 5, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nyvg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rqu699ccae3i1.jpeg', NULL, NULL, NULL, 6, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nyvg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ih33481dae3i1.jpeg', NULL, NULL, NULL, 7, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nyvg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/c5bvM9cJUsAW4nGAD04Gtx4VKXqS7vhgJS2VFddjbGQ.jpeg?format=pjpg&auto=webp&s=99de4fe8856b750087aace251a5ffc08a7e7712f', NULL, NULL, NULL, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3pyqc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ak7i0x9dre3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qlj9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w4u0fx9dre3i1.jpeg', 'https://cf.preview.redd.it/w4u0fx9dre3i1.jpeg?width=960&auto=webp&s=e7ce3a776ef62d2bc73580277139f1300ad45fb5', 960, 540, 1, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qlj9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2iprax9dre3i1.jpeg', 'https://cf.preview.redd.it/2iprax9dre3i1.jpeg?width=960&auto=webp&s=7d011789bf652f3f467384c3aa0b4fa59dd87ac7', 960, 720, 2, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qlj9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5h9wrx9dre3i1.jpeg', 'https://cf.preview.redd.it/5h9wrx9dre3i1.jpeg?width=960&auto=webp&s=8a353d45e33152e2ebc13bf9335ed63137ea456f', 960, 540, 3, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qlj9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r9onfx9dre3i1.jpeg', 'https://cf.preview.redd.it/r9onfx9dre3i1.jpeg?width=960&auto=webp&s=8c09d06dc73e37685e8b600d64116ca18d1e5cab', 960, 644, 4, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qlj9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e7mj0y9dre3i1.jpeg', 'https://cf.preview.redd.it/e7mj0y9dre3i1.jpeg?width=960&auto=webp&s=b58ffd4c006898535316939814a81b228df6a220', 960, 573, 5, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qlj9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zok51z9dre3i1.jpeg', NULL, NULL, NULL, 6, '2026-11-26 23:30:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qlj9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
