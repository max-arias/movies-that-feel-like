-- 0317_seed_20261024T190012Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-24T19:00:47.975803+00:00
-- Run started: 2026-10-24T19:00:12.911631+00:00
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
SELECT p.id, 'https://i.redd.it/86l1c0h6j6xh1.jpeg', 'https://preview.redd.it/86l1c0h6j6xh1.jpeg?width=960&auto=webp&s=dbb69ed92ff88904e2e9d39d35e03e5adc536602', 960, 1161, 0, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd8ldh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/m1urmdg6j6xh1.jpeg', NULL, NULL, NULL, 1, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd8ldh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mdkpwkh6j6xh1.jpeg', 'https://preview.redd.it/mdkpwkh6j6xh1.jpeg?width=960&auto=webp&s=fb18ee1f1bebfca09d2458957aa2bc8b051894f3', 960, 678, 2, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd8ldh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/92umfch6j6xh1.jpeg', 'https://preview.redd.it/92umfch6j6xh1.jpeg?width=960&auto=webp&s=36b9989c7b2aaa4c190899f15dfacf1896ddd115', 960, 697, 3, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd8ldh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0cmc1mg6j6xh1.jpeg', NULL, NULL, NULL, 4, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd8ldh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/udlb94h6j6xh1.jpeg', 'https://preview.redd.it/udlb94h6j6xh1.jpeg?width=960&auto=webp&s=3d347401cb1215a5550898687c92b4574cace618', 960, 479, 5, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd8ldh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qxtuifh6j6xh1.jpeg', 'https://preview.redd.it/qxtuifh6j6xh1.jpeg?width=960&auto=webp&s=b44553c8744a53bed32afad6eda5ab432eaf1440', 960, 818, 6, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd8ldh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tgc8mzgbs6xh1.jpeg', 'https://preview.redd.it/tgc8mzgbs6xh1.jpeg?width=960&auto=webp&s=3cb930b2db8ab7fa9149765b143526a4ac25da7d', 960, 720, 0, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd9f9w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1qrpaemmh7xh1.jpeg', NULL, NULL, NULL, 0, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdbyjr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/grf9s9cpn7xh1.jpeg', 'https://preview.redd.it/grf9s9cpn7xh1.jpeg?width=960&auto=webp&s=8b11a83172538fba203f3f637e99c63b7569b7fa', 960, 768, 0, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcomc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/aqg18acpn7xh1.jpeg', 'https://preview.redd.it/aqg18acpn7xh1.jpeg?width=960&auto=webp&s=4379f71a9d2b5e8978637551d316db0ed93e647a', 960, 1546, 1, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcomc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/06z3p9cpn7xh1.jpeg', NULL, NULL, NULL, 2, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcomc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/aziv49cpn7xh1.jpeg', NULL, NULL, NULL, 3, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcomc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tczg8obap7xh1.jpeg', 'https://cf.preview.redd.it/tczg8obap7xh1.jpeg?width=960&auto=webp&s=4c5f0b06478d2b57cac70abbbb00facf0660dd9e', 960, 540, 0, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcwcs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/50wtonbap7xh1.jpeg', NULL, NULL, NULL, 1, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcwcs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mozkcobap7xh1.jpeg', NULL, NULL, NULL, 2, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcwcs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rzrtbobap7xh1.jpeg', 'https://cf.preview.redd.it/rzrtbobap7xh1.jpeg?width=960&auto=webp&s=2ee96de96ce0c5cce99498e1718969093309826f', 960, 540, 3, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcwcs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ngpbnthep7xh1.jpeg', 'https://cf.preview.redd.it/ngpbnthep7xh1.jpeg?width=960&auto=webp&s=177500cf6ddc43a71279cc86d3afe5972b47a617', 960, 554, 4, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcwcs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fl85hshep7xh1.jpeg', 'https://cf.preview.redd.it/fl85hshep7xh1.jpeg?width=960&auto=webp&s=1737db8eea5a700e6f38db132c19e4765fd8af96', 960, 519, 5, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcwcs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/02zufdzep7xh1.png', 'https://cf.preview.redd.it/02zufdzep7xh1.png?width=960&auto=webp&s=8ea71c15fb99af86b8b748e0a028207c56094bfc', 960, 518, 6, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcwcs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/icncm1anp7xh1.jpeg', NULL, NULL, NULL, 0, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcxbl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/djtzoyfnp7xh1.jpeg', NULL, NULL, NULL, 1, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcxbl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d9jg7winp7xh1.jpeg', NULL, NULL, NULL, 2, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcxbl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/og90xbxaq7xh1.jpeg', 'https://preview.redd.it/og90xbxaq7xh1.jpeg?width=960&auto=webp&s=64238f006eef9bd20e9cabd8ec1f783e10310197', 960, 768, 0, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdd035'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5lkzicxaq7xh1.jpeg', 'https://preview.redd.it/5lkzicxaq7xh1.jpeg?width=960&auto=webp&s=18710e38e86ad0b24081c8356dfe734b590bb892', 960, 1200, 1, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdd035'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k0mhaexaq7xh1.jpeg', 'https://preview.redd.it/k0mhaexaq7xh1.jpeg?width=960&auto=webp&s=c2204ae0ddd2bed22bcb1884ddfd07bc98c42c64', 960, 960, 2, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdd035'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3fj9ecxaq7xh1.jpeg', NULL, NULL, NULL, 3, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdd035'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/050sybxaq7xh1.jpeg', 'https://preview.redd.it/050sybxaq7xh1.jpeg?width=960&auto=webp&s=0156b8c6f94f38f6579370148b17d72ac38005c9', 960, 950, 4, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdd035'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/12zo579jc8xh1.jpeg', NULL, NULL, NULL, 0, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdg4z0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vtaqauajc8xh1.jpeg', NULL, NULL, NULL, 1, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdg4z0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/j7hpaibjc8xh1.jpeg', NULL, NULL, NULL, 2, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdg4z0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/go8ix7djc8xh1.jpeg', NULL, NULL, NULL, 3, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdg4z0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lprp71ejc8xh1.jpeg', NULL, NULL, NULL, 4, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdg4z0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vg15zwbt49xh1.jpeg', NULL, NULL, NULL, 0, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdkdob'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4urbhybt49xh1.jpeg', NULL, NULL, NULL, 1, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdkdob'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ugrkhwbt49xh1.jpeg', 'https://preview.redd.it/ugrkhwbt49xh1.jpeg?width=960&auto=webp&s=5dcf30a58dee342d512204cb4eb62b7af15bc20a', 960, 720, 2, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdkdob'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/u29rcxbt49xh1.jpeg', NULL, NULL, NULL, 3, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdkdob'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ixj3dybt49xh1.jpeg', NULL, NULL, NULL, 4, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdkdob'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4xdaewbt49xh1.jpeg', NULL, NULL, NULL, 5, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdkdob'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2uoa7wbt49xh1.jpeg', NULL, NULL, NULL, 6, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdkdob'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8us633ct49xh1.jpeg', NULL, NULL, NULL, 7, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdkdob'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r0goe3ct49xh1.jpeg', NULL, NULL, NULL, 8, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdkdob'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ppnvyn1ti9xh1.jpeg', NULL, NULL, NULL, 0, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdmgs7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hes9zt1ti9xh1.jpeg', NULL, NULL, NULL, 1, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdmgs7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/biollt1ti9xh1.jpeg', NULL, NULL, NULL, 2, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdmgs7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/28mv7v1ti9xh1.jpeg', NULL, NULL, NULL, 3, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdmgs7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h3rilu1ti9xh1.jpeg', NULL, NULL, NULL, 4, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdmgs7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ahifcb6sb4xh1.jpeg', NULL, NULL, NULL, 0, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t4h7hb6sb4xh1.jpeg', 'https://preview.redd.it/t4h7hb6sb4xh1.jpeg?width=960&auto=webp&s=bc9f13c2966f84e35bf40fc1b6f252ab7729983b', 960, 738, 1, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/stemfb6sb4xh1.jpeg', 'https://preview.redd.it/stemfb6sb4xh1.jpeg?width=960&auto=webp&s=948bf7b1772998eddd7bd1d41bbc47c59532fade', 960, 1200, 2, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8wixha6sb4xh1.jpeg', NULL, NULL, NULL, 3, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/167xfb6sb4xh1.jpeg', NULL, NULL, NULL, 4, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/j0xjnc6sb4xh1.jpeg', 'https://preview.redd.it/j0xjnc6sb4xh1.jpeg?width=960&auto=webp&s=2dfa8a1bdf7aea4b7ff58edd4c039550f3720f7b', 960, 1196, 5, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p5j8sc6sb4xh1.jpeg', 'https://preview.redd.it/p5j8sc6sb4xh1.jpeg?width=960&auto=webp&s=097438e47367cc5a6a614d7271b9edbe6d372558', 960, 1259, 6, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0twawk6sb4xh1.jpeg', NULL, NULL, NULL, 7, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/75v2mb6sb4xh1.jpeg', NULL, NULL, NULL, 8, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rs5uqb6sb4xh1.jpeg', 'https://preview.redd.it/rs5uqb6sb4xh1.jpeg?width=960&auto=webp&s=9daa406cd43eb86e6f32ff6c766febc47ba5ff3a', 960, 659, 9, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2lh0gc6sb4xh1.jpeg', NULL, NULL, NULL, 10, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6q4gic6sb4xh1.jpeg', 'https://preview.redd.it/6q4gic6sb4xh1.jpeg?width=960&auto=webp&s=4403fb4550e9119dc1508ecdecbd84aa52d17a7e', 960, 1172, 11, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h5w7oc6sb4xh1.jpeg', NULL, NULL, NULL, 12, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0dyrld6sb4xh1.jpeg', 'https://preview.redd.it/0dyrld6sb4xh1.jpeg?width=960&auto=webp&s=9b8097d081bdf3a1d8563aee9bc649fc2ded334e', 960, 939, 13, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/iipyfd6sb4xh1.jpeg', NULL, NULL, NULL, 14, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6l0fly8a7axh1.jpeg', NULL, NULL, NULL, 0, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdq0au'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ndmdqz8a7axh1.jpeg', NULL, NULL, NULL, 1, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdq0au'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/slp8az8a7axh1.jpeg', 'https://cf.preview.redd.it/slp8az8a7axh1.jpeg?width=960&auto=webp&s=12722d579bbeb1ca21c8913a640c474bb47c0c8b', 960, 960, 2, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdq0au'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ct0poy8a7axh1.jpeg', NULL, NULL, NULL, 3, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdq0au'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0qbd18aa7axh1.jpeg', 'https://cf.preview.redd.it/0qbd18aa7axh1.jpeg?width=960&auto=webp&s=6e24f64e78eb3110bacbd4e71bee56f2a3a7609c', 960, 1236, 4, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdq0au'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lzsjdy8a7axh1.jpeg', 'https://cf.preview.redd.it/lzsjdy8a7axh1.jpeg?width=960&auto=webp&s=645bcf0f9fe37f6e5f919f64deb722ff31db57ce', 960, 732, 5, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdq0au'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/aonrvz8a7axh1.jpeg', NULL, NULL, NULL, 6, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdq0au'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ttc8u8aa7axh1.jpeg', NULL, NULL, NULL, 7, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdq0au'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wm4sm8aa7axh1.jpeg', NULL, NULL, NULL, 8, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdq0au'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4z46vkotkaxh1.jpeg', NULL, NULL, NULL, 0, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdru5h'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pktr0vo4oaxh1.jpeg', NULL, NULL, NULL, 0, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xds8z1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t7xkseqxpaxh1.jpeg', NULL, NULL, NULL, 0, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdsh6w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z248jkqxpaxh1.jpeg', NULL, NULL, NULL, 1, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdsh6w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/36ehxpqxpaxh1.jpeg', 'https://preview.redd.it/36ehxpqxpaxh1.jpeg?width=960&auto=webp&s=0efb33ab5864bf835e7d1f64147cd11eeffc86c3', 960, 540, 2, '2026-10-24 19:00:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdsh6w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
