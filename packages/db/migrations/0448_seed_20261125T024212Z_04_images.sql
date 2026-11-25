-- 0448_seed_20261125T024212Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-25T02:42:45.219810+00:00
-- Run started: 2026-11-25T02:42:12.092713+00:00
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
SELECT p.id, 'https://i.redd.it/wupiopejhl3i1.png', 'https://preview.redd.it/wupiopejhl3i1.png?width=960&auto=webp&s=36c80ff7cc2d1a3284efaf7f25bd0b1d25dd4682', 960, 1357, 0, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4j5h9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wi9r8amjhl3i1.jpeg', 'https://preview.redd.it/wi9r8amjhl3i1.jpeg?width=960&auto=webp&s=dc0a2f38675a5c897417751f73aeec107d9bb76a', 960, 759, 1, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4j5h9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/97trx1sjhl3i1.jpeg', 'https://preview.redd.it/97trx1sjhl3i1.jpeg?width=960&auto=webp&s=89d08fb4a3a527f916415a5a4a55d06a5b1acbc9', 960, 559, 2, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4j5h9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ph098rxjhl3i1.jpeg', 'https://preview.redd.it/ph098rxjhl3i1.jpeg?width=960&auto=webp&s=872753780ab9b74994d3dc02117f6c893b7d5217', 960, 745, 3, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4j5h9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nf6si90khl3i1.jpeg', 'https://preview.redd.it/nf6si90khl3i1.jpeg?width=960&auto=webp&s=3e263a25838badd2a7deecb2fe4590f41e22c1dc', 960, 543, 4, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4j5h9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6mgs2ycnnl3i1.jpeg', 'https://preview.redd.it/6mgs2ycnnl3i1.jpeg?width=960&auto=webp&s=f19f39e0f4eee80de9bef633be1a42ca21c5f79f', 960, 720, 0, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4k1q9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7gjktamonl3i1.jpeg', 'https://preview.redd.it/7gjktamonl3i1.jpeg?width=960&auto=webp&s=e58df029a0655683300856c3127d8e68b74e1062', 960, 720, 1, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4k1q9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yxojwpoonl3i1.jpeg', 'https://preview.redd.it/yxojwpoonl3i1.jpeg?width=960&auto=webp&s=3f8892a04ebf5f8dbc4996e1b6282cbefd4ee73f', 960, 720, 2, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4k1q9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6lw444uonl3i1.png', 'https://preview.redd.it/6lw444uonl3i1.png?width=960&auto=webp&s=27de463e6d00caeec585cf02259737598490e573', 960, 720, 3, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4k1q9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ywj71mo4vl3i1.jpeg', 'https://preview.redd.it/ywj71mo4vl3i1.jpeg?width=960&auto=webp&s=a3c5f9ecb565912a7ae180a46de05aab14a6be29', 960, 960, 0, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4l509'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8tke2ko4vl3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4l509'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6354emo4vl3i1.jpeg', 'https://preview.redd.it/6354emo4vl3i1.jpeg?width=960&auto=webp&s=65a8ef9be63ad9914403b661a2fcbb05794a7c8b', 960, 723, 2, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4l509'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3cfymlo4vl3i1.jpeg', NULL, NULL, NULL, 3, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4l509'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rr425mo4vl3i1.jpeg', NULL, NULL, NULL, 4, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4l509'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fyjkb66j2m3i1.jpeg', 'https://preview.redd.it/fyjkb66j2m3i1.jpeg?width=960&auto=webp&s=6931103efb7072dec4013ac2a9732445ef5cd76f', 960, 1430, 0, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4m79f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yn7iq96j2m3i1.jpeg', 'https://preview.redd.it/yn7iq96j2m3i1.jpeg?width=960&auto=webp&s=311c420cd7838b78b10d53bc2761eb419618f095', 960, 1431, 1, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4m79f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f7fk066j2m3i1.jpeg', 'https://preview.redd.it/f7fk066j2m3i1.jpeg?width=960&auto=webp&s=b7a410a8c61b3bb5dbef174bae9c592efa2cd426', 960, 1440, 2, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4m79f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wh37i56j2m3i1.jpeg', 'https://preview.redd.it/wh37i56j2m3i1.jpeg?width=960&auto=webp&s=64e7bd0c1c3db65c934b9492512954f969bde40e', 960, 1440, 3, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4m79f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/a08mgpm7pm3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4pf5e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/katyaqm7pm3i1.jpeg', 'https://cf.preview.redd.it/katyaqm7pm3i1.jpeg?width=960&auto=webp&s=5c67a8c2ecc4f7534d3e0c66d8e8111fdab11c04', 960, 1280, 1, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4pf5e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4eq1opm7pm3i1.jpeg', 'https://cf.preview.redd.it/4eq1opm7pm3i1.jpeg?width=960&auto=webp&s=e843c7fe4a99ffd60d77aee95e9905053a2512cc', 960, 1192, 2, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4pf5e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f4k09rksen3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4sp3j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/liy8jvksen3i1.jpeg', 'https://preview.redd.it/liy8jvksen3i1.jpeg?width=960&auto=webp&s=1cedaf73901a68c8c989c80b05b408cc12a65c6f', 960, 540, 1, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4sp3j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/arpl5rksen3i1.jpeg', NULL, NULL, NULL, 2, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4sp3j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6uxu3qksen3i1.jpeg', NULL, NULL, NULL, 3, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4sp3j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hq6wzrksen3i1.jpeg', 'https://preview.redd.it/hq6wzrksen3i1.jpeg?width=960&auto=webp&s=b6839a64b71c42bee4c7ff10de043a12db7f39e0', 960, 1196, 4, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4sp3j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vwxkdrksen3i1.jpeg', NULL, NULL, NULL, 5, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4sp3j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/155j9sksen3i1.jpeg', 'https://preview.redd.it/155j9sksen3i1.jpeg?width=960&auto=webp&s=cc2f5cf74980cee90dda9e070356836f9db70346', 960, 1280, 6, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4sp3j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6vz7yrksen3i1.jpeg', NULL, NULL, NULL, 7, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4sp3j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5jzerrksen3i1.jpeg', NULL, NULL, NULL, 8, '2026-11-25 02:42:45', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4sp3j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
