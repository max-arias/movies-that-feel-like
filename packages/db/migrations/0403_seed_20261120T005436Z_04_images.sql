-- 0403_seed_20261120T005436Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-20T00:55:15.484968+00:00
-- Run started: 2026-11-20T00:54:36.315340+00:00
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
SELECT p.id, 'https://i.redd.it/nw7g9l3iqi2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y033k6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b0akkp5iqi2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y033k6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z3pfqe7iqi2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y033k6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z8hla99iqi2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y033k6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/kf_az9ap5z_DQ9Zn-s_qas8Oj40EJadkPilSXQq_bhs.jpeg?format=pjpg&auto=webp&s=c22c132c021a709a8b8dab9f2cdcac7917993667', NULL, NULL, NULL, 0, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y03rhu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8ahwwilpaj2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y04s3g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s40i43opaj2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y04s3g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xixp6qppaj2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y04s3g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ylcis8spaj2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y04s3g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/41npydupaj2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y04s3g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tsav3yvpaj2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y04s3g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/y8mi5bxpaj2i1.jpeg', NULL, NULL, NULL, 6, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y04s3g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7izcvpypaj2i1.jpeg', NULL, NULL, NULL, 7, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y04s3g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/458wvto7yj2i1.png', 'https://preview.redd.it/458wvto7yj2i1.png?width=960&auto=webp&s=0979d25409737f720f498ea2031f962ce84d6087', 960, 528, 0, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y06ykj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3gfl5hf8yj2i1.png', 'https://preview.redd.it/3gfl5hf8yj2i1.png?width=960&auto=webp&s=4352b7813c3fdc16cb78dd2c03a14aaab1418ee5', 960, 524, 1, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y06ykj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/m1i5chd9yj2i1.png', 'https://preview.redd.it/m1i5chd9yj2i1.png?width=960&auto=webp&s=a6cda68b2fa91cda9b2dc648d3b25b99ee9dbee4', 960, 506, 2, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y06ykj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gyo2bfb8zj2i1.png', 'https://preview.redd.it/gyo2bfb8zj2i1.png?width=960&auto=webp&s=1cf7ac82d7182dab7929e1001cdfe3e964c15ae1', 960, 456, 3, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y06ykj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pmw9jh01ak2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y07y9a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rx4c2ia7rk2i1.jpeg', 'https://preview.redd.it/rx4c2ia7rk2i1.jpeg?width=960&auto=webp&s=aa1a213b52cb0a2110e7f58c65f9017a832b631e', 960, 1753, 0, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y09vjr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2j8lkd9zyk2i1.jpeg', 'https://preview.redd.it/2j8lkd9zyk2i1.jpeg?width=960&auto=webp&s=a6412e45afcec35d3b8022fd15bd42e8a481dacb', 960, 540, 0, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0awi8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z55wa0a2lk2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0du0v'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rqbkysdwhm2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0itd5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pqx3o4hwhm2i1.png', 'https://preview.redd.it/pqx3o4hwhm2i1.png?width=960&auto=webp&s=3a1762ae2e78c534b55f288a9a840651e7341fe2', 960, 540, 1, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0itd5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8j9z1unyhm2i1.jpeg', 'https://preview.redd.it/8j9z1unyhm2i1.jpeg?width=960&auto=webp&s=e968604b8d9190639a038701c28b6524a56fe61f', 960, 540, 2, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0itd5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xk1uzfsyhm2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0itd5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ldor8fcotm2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0kh00'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/j8hpsgfotm2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0kh00'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qqhytoj71n2i1.jpeg', 'https://preview.redd.it/qqhytoj71n2i1.jpeg?width=960&auto=webp&s=7d1fd680709e37674624f99bf1c6e334596b8f24', 960, 540, 0, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0lhrf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bhob3oj71n2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0lhrf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e7v8toj71n2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0lhrf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yudrhoj71n2i1.jpeg', 'https://preview.redd.it/yudrhoj71n2i1.jpeg?width=960&auto=webp&s=90332c9626d6966d3ab4a5653f543618ed49dc9d', 960, 720, 3, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0lhrf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/znsfapj71n2i1.jpeg', 'https://preview.redd.it/znsfapj71n2i1.jpeg?width=960&auto=webp&s=f170b147f02d7c9687070f3ea76c0d10398ad837', 960, 579, 4, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0lhrf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lla5soj71n2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0lhrf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/19vm7oj71n2i1.jpeg', NULL, NULL, NULL, 6, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0lhrf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8t5isywnan2i1.jpeg', 'https://preview.redd.it/8t5isywnan2i1.jpeg?width=960&auto=webp&s=0957b3475fbf901981ef2bb0a4a881567b02d409', 960, 540, 0, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0mqlt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n3cj3zwnan2i1.jpeg', 'https://preview.redd.it/n3cj3zwnan2i1.jpeg?width=960&auto=webp&s=9630419b3f792489171276cf311c98bab6f21eb9', 960, 540, 1, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0mqlt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xjb64zwnan2i1.jpeg', 'https://preview.redd.it/xjb64zwnan2i1.jpeg?width=960&auto=webp&s=709da0562af19269514014e5a535f3d161bb64fb', 960, 570, 2, '2026-11-20 00:55:15', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0mqlt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
