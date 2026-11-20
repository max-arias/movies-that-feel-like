-- 0012_seed_20261120T010603Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-20T01:06:03.895067+00:00
-- Run started: 2026-11-20T01:06:03.495879+00:00
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
SELECT p.id, 'https://i.redd.it/2tdjq4vpug2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 01:06:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzvx16'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0f34w0vpug2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 01:06:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzvx16'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3wv9q5vpug2i1.jpeg', 'https://preview.redd.it/3wv9q5vpug2i1.jpeg?width=960&auto=webp&s=a03f17871403556eb8402f82384e1c4ce86be2f8', 960, 1406, 2, '2026-11-20 01:06:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzvx16'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/umnia5vpug2i1.jpeg', 'https://preview.redd.it/umnia5vpug2i1.jpeg?width=960&auto=webp&s=0ee927d952adaf641e3ee4af0f895ad890d5d587', 960, 734, 3, '2026-11-20 01:06:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzvx16'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cgy4ypairh2i1.jpeg', 'https://preview.redd.it/cgy4ypairh2i1.jpeg?width=960&auto=webp&s=f136e261b6c0338daa9d655275723a5a23b77948', 960, 540, 0, '2026-11-20 01:06:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzpbd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zblp0d4jrh2i1.jpeg', 'https://preview.redd.it/zblp0d4jrh2i1.jpeg?width=960&auto=webp&s=d315ca1a32fb44ac58ea444e81d26ad525048759', 960, 540, 1, '2026-11-20 01:06:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzpbd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ivrklgsqrh2i1.jpeg', 'https://preview.redd.it/ivrklgsqrh2i1.jpeg?width=960&auto=webp&s=2925e1f8d9f57c832b3ceb718ccfc66467642f46', 960, 540, 2, '2026-11-20 01:06:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzpbd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/OWRnYjhoaHEyaTJpMekk5fQZsPltD5RF5JeXYSFVz8WaUdFsQtESg8Uawdqv.jpeg?format=pjpg&auto=webp&s=c5a1bf22511701075502834c885fd78a5c93d188', 'https://external-preview.redd.it/OWRnYjhoaHEyaTJpMekk5fQZsPltD5RF5JeXYSFVz8WaUdFsQtESg8Uawdqv.jpeg?width=960&format=pjpg&auto=webp&s=e86672793cae1f8a5d06907a616628e95f5482cc', 960, 540, 0, '2026-11-20 01:06:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00uk5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/OThnZThiNncxazJpMTxuLJh94qUtAroijCYCVek7qQ5uAPbT2clGHQGzJBrx.png?format=pjpg&auto=webp&s=64d587932a176e980c97dc7aa65cf62ab86e6846', 'https://external-preview.redd.it/OThnZThiNncxazJpMTxuLJh94qUtAroijCYCVek7qQ5uAPbT2clGHQGzJBrx.png?width=960&format=pjpg&auto=webp&s=306b7cb8ae0d98aceb9210618feb0b9c44980ce6', 960, 540, 0, '2026-11-20 01:06:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y07591'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zwoztfwl9n2i1.jpeg', 'https://preview.redd.it/zwoztfwl9n2i1.jpeg?width=960&auto=webp&s=27389c3b6d786849c395b88fd089047409dbc454', 960, 540, 0, '2026-11-20 01:06:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0molw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cr6c3x8f9n2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 01:06:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0molw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bbg9ct6p9n2i1.jpeg', 'https://preview.redd.it/bbg9ct6p9n2i1.jpeg?width=960&auto=webp&s=8fca16e1fee0c1c3042df9b62befd0d3d0b97f80', 960, 540, 2, '2026-11-20 01:06:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0molw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
