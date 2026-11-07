-- 0367_seed_20261107T151500Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-07T15:15:25.408245+00:00
-- Run started: 2026-11-07T15:15:00.147470+00:00
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
SELECT p.id, 'https://i.redd.it/ltz08009dxzh1.jpeg', NULL, NULL, NULL, 0, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp4g4c'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p2kuwr19dxzh1.jpeg', NULL, NULL, NULL, 1, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp4g4c'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w1ivfu29dxzh1.jpeg', NULL, NULL, NULL, 2, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp4g4c'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f39jsy39dxzh1.jpeg', NULL, NULL, NULL, 3, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp4g4c'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4gtxoz49dxzh1.jpeg', NULL, NULL, NULL, 4, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp4g4c'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/47naub69dxzh1.jpeg', NULL, NULL, NULL, 5, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp4g4c'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h8f6jsb97yzh1.jpeg', NULL, NULL, NULL, 0, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp76pl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2n1h1waylyzh1.png', NULL, NULL, NULL, 0, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp8fy9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/al78ody2100i1.jpeg', NULL, NULL, NULL, 0, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpdkk6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h7oiv7j3100i1.jpeg', NULL, NULL, NULL, 1, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpdkk6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/y6utivz3100i1.jpeg', NULL, NULL, NULL, 2, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpdkk6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cvbi09p5b00i1.jpeg', NULL, NULL, NULL, 0, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0aostnlcb00i1.jpeg', NULL, NULL, NULL, 1, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6zh8wqpjb00i1.jpeg', 'https://preview.redd.it/6zh8wqpjb00i1.jpeg?width=960&auto=webp&s=5fd373339dcebcfa6589af5f95d7131d8fb9787d', 960, 640, 2, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xfuj8p05d00i1.jpeg', NULL, NULL, NULL, 3, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/o7cggf6ob00i1.jpeg', NULL, NULL, NULL, 4, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8l1tx1dcd00i1.jpeg', NULL, NULL, NULL, 5, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fh5b5pcsb00i1.jpeg', 'https://preview.redd.it/fh5b5pcsb00i1.jpeg?width=960&auto=webp&s=dc61a008c89067fb636692ea1d7d3c3beb2a9d1f', 960, 960, 6, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fj9ulu1zb00i1.jpeg', NULL, NULL, NULL, 7, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/glds14i6c00i1.jpeg', NULL, NULL, NULL, 8, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qps3cap7c00i1.jpeg', NULL, NULL, NULL, 9, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1bz5qufbc00i1.jpeg', NULL, NULL, NULL, 10, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n9iuju8ec00i1.jpeg', NULL, NULL, NULL, 11, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/o2g2ks4jc00i1.jpeg', 'https://preview.redd.it/o2g2ks4jc00i1.jpeg?width=960&auto=webp&s=da358b1bfa3a1d89bdc397a6eb5cd8d2637824e5', 960, 1440, 12, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tknh7ernc00i1.jpeg', 'https://preview.redd.it/tknh7ernc00i1.jpeg?width=960&auto=webp&s=a9b1a6debfe6004dca94a605553dc86632bb21e2', 960, 540, 13, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gfop5tarc00i1.jpeg', 'https://preview.redd.it/gfop5tarc00i1.jpeg?width=960&auto=webp&s=485e668ec3453c3c301e847d52491c830ba7be27', 960, 600, 14, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mza9uhh0d00i1.jpeg', NULL, NULL, NULL, 15, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dyl8oijid00i1.jpeg', NULL, NULL, NULL, 16, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpf7ss'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6cqykzqdk00i1.jpeg', NULL, NULL, NULL, 0, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpg69s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/egku41rdk00i1.jpeg', 'https://preview.redd.it/egku41rdk00i1.jpeg?width=960&auto=webp&s=5a87395aaf5f2b84d46d0f1f45127599fd54afda', 960, 628, 1, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpg69s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xzx091rdk00i1.jpeg', 'https://preview.redd.it/xzx091rdk00i1.jpeg?width=960&auto=webp&s=e5ca72a0f94f279ccee030f18c0c574d362792ed', 960, 640, 2, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpg69s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/240fw3rdk00i1.jpeg', 'https://preview.redd.it/240fw3rdk00i1.jpeg?width=960&auto=webp&s=748d9a11011e91016e2397f54cfbc4cfc070ee52', 960, 637, 3, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpg69s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9biqfkm4210i1.jpeg', 'https://preview.redd.it/9biqfkm4210i1.jpeg?width=960&auto=webp&s=899238ffc987754d717159ce556138ce06eeae02', 960, 949, 0, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpn2n3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8os9k5h9b20i1.jpeg', NULL, NULL, NULL, 0, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpp2or'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/j5siwqn9b20i1.jpeg', NULL, NULL, NULL, 1, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpp2or'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ecbe42r9b20i1.jpeg', NULL, NULL, NULL, 2, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpp2or'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4djt9nv9b20i1.jpeg', NULL, NULL, NULL, 3, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpp2or'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2dax7mz9b20i1.jpeg', NULL, NULL, NULL, 4, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xpp2or'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ffnlzsyje20i1.jpeg', 'https://preview.redd.it/ffnlzsyje20i1.jpeg?width=960&auto=webp&s=7d8eb36521b504d217f1b415891f9382998d09b2', 960, 1706, 0, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xppiev'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e1e5li8ze20i1.jpeg', 'https://preview.redd.it/e1e5li8ze20i1.jpeg?width=960&auto=webp&s=eb3e9794d3b117d18c8b3da875df6d48a2834b96', 960, 1706, 0, '2026-11-07 15:15:25', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xppkey'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
