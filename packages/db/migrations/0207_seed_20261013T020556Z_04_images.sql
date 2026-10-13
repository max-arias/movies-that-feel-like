-- 0207_seed_20261013T020556Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-13T02:06:20.378887+00:00
-- Run started: 2026-10-13T02:05:56.255903+00:00
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
SELECT p.id, 'https://preview.redd.it/guefm79j14vh1.jpg?width=736&format=pjpg&auto=webp&s=9fd6d7911bf5d18b2ae0b7be813a2747a6412a63', NULL, NULL, NULL, 0, '2026-10-13 02:06:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fm3q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/bgbukgck14vh1.jpg?width=736&format=pjpg&auto=webp&s=5b4eda8b74e919e961d7a1402008cdf0007ef262', NULL, NULL, NULL, 1, '2026-10-13 02:06:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fm3q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ysc0305l14vh1.jpg?width=735&format=pjpg&auto=webp&s=c13d500304aa694d2bf7352acfe0bd40d39d2d1b', NULL, NULL, NULL, 2, '2026-10-13 02:06:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fm3q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/tr9yt78m14vh1.jpg?width=640&format=pjpg&auto=webp&s=105b0ecaeed9f4b417372763d3470cdc26c08036', NULL, NULL, NULL, 3, '2026-10-13 02:06:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fm3q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/99b6g4jn14vh1.jpg?width=736&format=pjpg&auto=webp&s=c03ac5a0fbfd99ef5071ba6c4bb7816e999450f9', NULL, NULL, NULL, 4, '2026-10-13 02:06:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fm3q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/2rq0o4pr14vh1.jpg?width=512&format=pjpg&auto=webp&s=b95aaf25fa672c19dd4a030d104c13ad883feb7a', NULL, NULL, NULL, 5, '2026-10-13 02:06:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fm3q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/hvlxv0rs14vh1.jpg?width=736&format=pjpg&auto=webp&s=889af85d0402f18cc16314f9e5473c7a1b2a8f00', NULL, NULL, NULL, 6, '2026-10-13 02:06:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fm3q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/cl5mp1tt14vh1.jpg?width=736&format=pjpg&auto=webp&s=dade44d74556e95e85165b8a252d7f8a7e931170', NULL, NULL, NULL, 7, '2026-10-13 02:06:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fm3q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/k7sqb6mu14vh1.jpg?width=639&format=pjpg&auto=webp&s=127f0b92b81e45e7bd30582cecb697ba30a4fc46', NULL, NULL, NULL, 8, '2026-10-13 02:06:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fm3q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/yhw65g8v14vh1.jpg?width=736&format=pjpg&auto=webp&s=2e53d6673e59916f580c9a652cb1b7dea0acc1e9', NULL, NULL, NULL, 9, '2026-10-13 02:06:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fm3q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/mp6744gw14vh1.jpg?width=640&format=pjpg&auto=webp&s=485740f09442e809548c277525ef8b25ae804fe8', NULL, NULL, NULL, 10, '2026-10-13 02:06:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4fm3q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8mmy84it54vh1.jpeg', NULL, NULL, NULL, 0, '2026-10-13 02:06:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4g3o3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/7ll285r3e4vh1.png?width=1380&format=png&auto=webp&s=9680f57ceb2df3230db2b868897678bc53bdd4cc', 'https://preview.redd.it/7ll285r3e4vh1.png?width=960&crop=smart&auto=webp&s=5948402ea1e9b40029b7d1f4f0a1b62eec9225fb', 960, 438, 0, '2026-10-13 02:06:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4h4ut'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/41rbd9r3e4vh1.png?width=1344&format=png&auto=webp&s=f9afa5b600cc29d9a89eb933ec8f4beb3570face', 'https://preview.redd.it/41rbd9r3e4vh1.png?width=960&crop=smart&auto=webp&s=943261dcf0972e0fc6d3824d955b9facfb4c6388', 960, 461, 1, '2026-10-13 02:06:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4h4ut'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0aczw4r3e4vh1.png?width=1366&format=png&auto=webp&s=1c133997e57a6f62e429194bf3e9919aeaa03a67', 'https://preview.redd.it/0aczw4r3e4vh1.png?width=960&crop=smart&auto=webp&s=757f3b7667e4d0cbb4185f0bd89620ee912df907', 960, 459, 2, '2026-10-13 02:06:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4h4ut'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/zq1vv5r3e4vh1.png?width=1364&format=png&auto=webp&s=e7924bd5889a9abce4ac58c2256bcb5127e1e6d6', 'https://preview.redd.it/zq1vv5r3e4vh1.png?width=960&crop=smart&auto=webp&s=e2ede6cdf162f9c2df59b0f32aa6d20244dae130', 960, 458, 3, '2026-10-13 02:06:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4h4ut'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/79m2p5r3e4vh1.png?width=1370&format=png&auto=webp&s=d84904bbed2707f26a8eb071471e90474ae46634', 'https://preview.redd.it/79m2p5r3e4vh1.png?width=960&crop=smart&auto=webp&s=06499ca1ef127c802dbba2e568aa3bfd3e214d8b', 960, 458, 4, '2026-10-13 02:06:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4h4ut'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s9978uxfh4vh1.jpeg', NULL, NULL, NULL, 0, '2026-10-13 02:06:20', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4hj3r'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
