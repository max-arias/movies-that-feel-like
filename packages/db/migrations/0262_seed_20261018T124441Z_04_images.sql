-- 0262_seed_20261018T124441Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-18T12:45:15.274994+00:00
-- Run started: 2026-10-18T12:44:41.796623+00:00
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
SELECT p.id, 'https://i.redd.it/4wpkfrcxcfuh1.jpeg', NULL, NULL, NULL, 0, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1ikwb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/bjR5eWp1NGJnanVoMT2NNBHtS2m0fL9f2JtN3-3vTWHBUnfkvS77VwEpM54k.jpeg?format=pjpg&auto=webp&s=981e99ec49861cd8036c78ae4383132067a77184', NULL, NULL, NULL, 0, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x222qp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w7dphvv17xvh1.gif', NULL, NULL, NULL, 0, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7wade'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pkt3wpxuoxvh1.jpg', NULL, NULL, NULL, 0, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7y782'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/chodekzuoxvh1.jpg', NULL, NULL, NULL, 1, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7y782'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hx7u2o0voxvh1.jpg', NULL, NULL, NULL, 2, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7y782'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ksg98q1voxvh1.jpg', 'https://preview.redd.it/ksg98q1voxvh1.jpg?width=960&auto=webp&s=e4cd8ae90ce509a82be76507fcd9495ab155dbff', 960, 1416, 3, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7y782'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/eqjj6hqt4yvh1.jpg', NULL, NULL, NULL, 0, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rkiwotrt4yvh1.jpg', NULL, NULL, NULL, 1, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rzvkuost4yvh1.jpg', NULL, NULL, NULL, 2, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8traewtt4yvh1.jpg', NULL, NULL, NULL, 3, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t9cg0evt4yvh1.jpg', NULL, NULL, NULL, 4, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2eily8wt4yvh1.jpg', NULL, NULL, NULL, 5, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ppmab2xt4yvh1.jpg', NULL, NULL, NULL, 6, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x6qvn5yt4yvh1.jpg', NULL, NULL, NULL, 7, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w0rr4rzt4yvh1.jpg', NULL, NULL, NULL, 8, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qelcer0u4yvh1.jpg', NULL, NULL, NULL, 9, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pjsi0k1u4yvh1.jpg', NULL, NULL, NULL, 10, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5g5nab2u4yvh1.jpg', NULL, NULL, NULL, 11, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/efz3573u4yvh1.jpg', NULL, NULL, NULL, 12, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yb3ps14u4yvh1.jpg', NULL, NULL, NULL, 13, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l1nf0t4u4yvh1.jpg', NULL, NULL, NULL, 14, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7zvcc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4m6t8dtdmzvh1.jpg', NULL, NULL, NULL, 0, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x84ybm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cuetzkzdmzvh1.jpg', NULL, NULL, NULL, 1, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x84ybm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ire6sl3emzvh1.jpg', NULL, NULL, NULL, 2, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x84ybm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/u4ldpe7emzvh1.jpg', NULL, NULL, NULL, 3, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x84ybm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/za3migbemzvh1.jpg', NULL, NULL, NULL, 4, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x84ybm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3n0e4akemzvh1.jpg', NULL, NULL, NULL, 5, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x84ybm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r6ytxmoemzvh1.jpg', NULL, NULL, NULL, 6, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x84ybm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/owtao6vemzvh1.jpg', NULL, NULL, NULL, 7, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x84ybm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ugnegozemzvh1.jpg', NULL, NULL, NULL, 8, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x84ybm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9n1ubk3fmzvh1.jpg', 'https://preview.redd.it/9n1ubk3fmzvh1.jpg?width=960&auto=webp&s=745c90c4100f40dac3238721fe6e8de9c47b384c', 960, 1200, 9, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x84ybm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qcccv8afmzvh1.jpg', NULL, NULL, NULL, 10, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x84ybm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/amndxzdfmzvh1.jpg', NULL, NULL, NULL, 11, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x84ybm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cr5ywbifmzvh1.jpg', NULL, NULL, NULL, 12, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x84ybm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/a505klfyqzvh1.jpeg', NULL, NULL, NULL, 0, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x85c6k'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tsv33t53rzvh1.jpeg', NULL, NULL, NULL, 0, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x85clb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ovujmmwsu1wh1.jpeg', 'https://preview.redd.it/ovujmmwsu1wh1.jpeg?width=960&auto=webp&s=f45fc59e73311ddb60505cec2c6b3a267a529c29', 960, 1280, 0, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8do2q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4as7stp5y1wh1.jpg', 'https://preview.redd.it/4as7stp5y1wh1.jpg?width=960&auto=webp&s=1f7c445e50bd28fe9bf49b0b07acec8bee44e121', 960, 1374, 0, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8e580'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fozagtp5y1wh1.jpg', NULL, NULL, NULL, 1, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8e580'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1lwsvtp5y1wh1.jpg', 'https://preview.redd.it/1lwsvtp5y1wh1.jpg?width=960&auto=webp&s=5437406137f7ab5bb2e7e0271d1be7ea08c50818', 960, 960, 2, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8e580'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fcr80up5y1wh1.jpg', 'https://preview.redd.it/fcr80up5y1wh1.jpg?width=960&auto=webp&s=ae3d6ba416dbccc3ec4a4509a157f6db385b5313', 960, 758, 3, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8e580'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xydx2up5y1wh1.jpg', 'https://preview.redd.it/xydx2up5y1wh1.jpg?width=960&auto=webp&s=d14f9882fdb11bb0672a76f26c8d2914a2e27ead', 960, 941, 4, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8e580'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ogdrptp5y1wh1.jpg', NULL, NULL, NULL, 5, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8e580'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0i5eotp5y1wh1.jpg', NULL, NULL, NULL, 6, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8e580'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zwvn8xxw52wh1.jpeg', NULL, NULL, NULL, 0, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8fwxk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/Mv0fgy_26a4PnsGuP8NhBt5zi4FU76HFct1BMEi-D1g.jpeg?format=pjpg&auto=webp&s=dbaad25eb2648f652e6bebcf24109ee3d8acad96', NULL, NULL, NULL, 0, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8gv4d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/Mv0fgy_26a4PnsGuP8NhBt5zi4FU76HFct1BMEi-D1g.jpeg?format=pjpg&auto=webp&s=dbaad25eb2648f652e6bebcf24109ee3d8acad96', NULL, NULL, NULL, 0, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8gw14'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/agyqdkqxo2wh1.jpeg', NULL, NULL, NULL, 0, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hu9i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7xffgww5p2wh1.jpg', NULL, NULL, NULL, 0, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hvd4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/50967h26p2wh1.jpg', NULL, NULL, NULL, 1, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hvd4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/luffzp46p2wh1.jpg', NULL, NULL, NULL, 2, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hvd4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w2clkj96p2wh1.jpg', NULL, NULL, NULL, 3, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hvd4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dehwamc6p2wh1.jpg', NULL, NULL, NULL, 4, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hvd4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/00va9ve6p2wh1.jpg', NULL, NULL, NULL, 5, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hvd4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cnzrjai6p2wh1.jpg', 'https://preview.redd.it/cnzrjai6p2wh1.jpg?width=960&auto=webp&s=b91d348e779fa003c557c65a1f27bdabb7d6807f', 960, 720, 6, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8hvd4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fzxj4lm9l3wh1.jpg', NULL, NULL, NULL, 0, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8m41o'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zpj96qo9l3wh1.jpg', NULL, NULL, NULL, 1, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8m41o'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9euupqp9l3wh1.jpg', NULL, NULL, NULL, 2, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8m41o'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/osqopqq9l3wh1.jpg', NULL, NULL, NULL, 3, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8m41o'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wpch5ss9l3wh1.jpg', NULL, NULL, NULL, 4, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8m41o'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9rkd2pu9l3wh1.jpg', NULL, NULL, NULL, 5, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8m41o'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b1m3g0w9l3wh1.jpg', NULL, NULL, NULL, 6, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8m41o'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/skxrs3x9l3wh1.jpg', NULL, NULL, NULL, 7, '2026-10-18 12:45:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8m41o'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
