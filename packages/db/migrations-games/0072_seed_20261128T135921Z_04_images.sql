-- 0072_seed_20261128T135921Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-28T13:59:23.628863+00:00
-- Run started: 2026-11-28T13:59:21.658733+00:00
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
SELECT p.id, 'https://i.redd.it/t3z5ijuyhg1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvltfm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xpjc44xyhg1i1.jpeg', 'https://preview.redd.it/xpjc44xyhg1i1.jpeg?width=960&auto=webp&s=00a4e319bef0ef5ac1e372d50335383d8dfae125', 960, 1200, 1, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvltfm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8wf5acx34h1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvomdt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ehuislup8h1i1.jpeg', 'https://preview.redd.it/ehuislup8h1i1.jpeg?width=960&auto=webp&s=775783dd44d125fef76c830aafa7c84682f38e33', 960, 362, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvp5er'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7w8ldoxp8h1i1.jpeg', 'https://preview.redd.it/7w8ldoxp8h1i1.jpeg?width=960&auto=webp&s=60dff3dfb66bb57be5667c23befcaf3214ce8c49', 960, 620, 1, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvp5er'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vc48br5q8h1i1.png', 'https://preview.redd.it/vc48br5q8h1i1.png?width=960&auto=webp&s=8f0dd261ba24e328626ea050193a46859d5ce08b', 960, 596, 2, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvp5er'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1u21h29q8h1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvp5er'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p2krr62cjh1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvqc9n'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x4fs8g9afj1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvx7ct'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n7y6rvpofk1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw0gh2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b2u1jv8dmk1i1.jpeg', 'https://preview.redd.it/b2u1jv8dmk1i1.jpeg?width=960&auto=webp&s=bdee97a730ebc127c3e9e407d661952e6cac9cb2', 960, 600, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw14p5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fd1e9icdmk1i1.jpeg', 'https://preview.redd.it/fd1e9icdmk1i1.jpeg?width=960&auto=webp&s=d6993d6950e3d055433d7ee0ef95916e71c6c02d', 960, 540, 1, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw14p5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/txv48zpfnl1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw5m7v'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0ubds6424m1i1.jpeg', 'https://preview.redd.it/0ubds6424m1i1.jpeg?width=960&auto=webp&s=eaf0bd22693a0909db61764f274364df226c607b', 960, 1405, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw7wtr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yaqv3oquqm1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwb2vb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/51obcgtuqm1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwb2vb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/v4k8qwuuqm1i1.jpeg', 'https://cf.preview.redd.it/v4k8qwuuqm1i1.jpeg?width=960&auto=webp&s=b2b7e8f63e69faa946e219e5e4561a80fe037cb4', 960, 432, 2, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwb2vb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/envrg1xuqm1i1.jpeg', 'https://cf.preview.redd.it/envrg1xuqm1i1.jpeg?width=960&auto=webp&s=af922de6fb9f1b37bb3ec5d6b415c11984c4eed1', 960, 432, 3, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwb2vb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/na4ohtyuqm1i1.jpeg', 'https://cf.preview.redd.it/na4ohtyuqm1i1.jpeg?width=960&auto=webp&s=bb40b01c5171ac2ca482918eb779e9570815cb30', 960, 432, 4, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwb2vb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pqp0ih0vqm1i1.jpeg', 'https://cf.preview.redd.it/pqp0ih0vqm1i1.jpeg?width=960&auto=webp&s=f07111a70acb98d411f24d0f075d86b7ca1cba24', 960, 432, 5, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwb2vb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2ukpb43vqm1i1.jpeg', 'https://cf.preview.redd.it/2ukpb43vqm1i1.jpeg?width=960&auto=webp&s=a9c899acd17be23889f6a016da39b034abbaf202', 960, 432, 6, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwb2vb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/egskkb0sym1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwc4wm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/km92p78sym1i1.jpeg', 'https://preview.redd.it/km92p78sym1i1.jpeg?width=960&auto=webp&s=adc1edffb418631da68b1ea1d241be6bfb1a3b1c', 960, 1573, 1, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwc4wm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/57t3wlgsym1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwc4wm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/g1xt0ljsym1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwc4wm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mw6s6lzn6n1i1.png', 'https://preview.redd.it/mw6s6lzn6n1i1.png?width=960&auto=webp&s=3752ca060b6aca88c85f1d6c8355c09a80a46f15', 960, 960, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwd9pf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xm64zvod7n1i1.png', NULL, NULL, NULL, 1, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwd9pf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8d6ciu5vkn1i1.jpeg', 'https://preview.redd.it/8d6ciu5vkn1i1.jpeg?width=960&auto=webp&s=102c15dab5ddab856c20dece1d6c99660ddedbbd', 960, 539, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwexsw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jkoiv86vkn1i1.jpeg', 'https://preview.redd.it/jkoiv86vkn1i1.jpeg?width=960&auto=webp&s=b9ea548b2080c036b1f2c9b1e0e0279a955da1a0', 960, 499, 1, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwexsw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s8sbdw5vkn1i1.jpeg', 'https://preview.redd.it/s8sbdw5vkn1i1.jpeg?width=960&auto=webp&s=0ca45f6a546ad5930ee081738197f04dda1f845e', 960, 540, 2, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwexsw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6jmmmq5vkn1i1.jpeg', 'https://preview.redd.it/6jmmmq5vkn1i1.jpeg?width=960&auto=webp&s=e7ae6267e841e3500d0c8a00a7a28e3bae00f4d1', 960, 504, 3, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwexsw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dbwjpq5vkn1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwexsw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oxh8ws5vkn1i1.jpeg', 'https://preview.redd.it/oxh8ws5vkn1i1.jpeg?width=960&auto=webp&s=ee2662db15d248011fb2454d8d74f68373ea63b5', 960, 540, 5, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwexsw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lic6uy5vkn1i1.jpeg', 'https://preview.redd.it/lic6uy5vkn1i1.jpeg?width=960&auto=webp&s=70183a92077490b0854a19e8ef04fb5dd80c48e9', 960, 600, 6, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwexsw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rn292r5vkn1i1.jpeg', NULL, NULL, NULL, 7, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwexsw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/djkbnvxgsn1i1.jpeg', 'https://preview.redd.it/djkbnvxgsn1i1.jpeg?width=960&auto=webp&s=ea270f8ee89987b877771b7483f89618ec04383f', 960, 540, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwfw54'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oo9pfzhqho1i1.jpeg', 'https://preview.redd.it/oo9pfzhqho1i1.jpeg?width=960&auto=webp&s=8b0572e150812b078399f9ff8d175cf50d4ac764', 960, 540, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwitgj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/llb6swwuip1i1.jpeg', 'https://preview.redd.it/llb6swwuip1i1.jpeg?width=960&auto=webp&s=e15bcf854e501cb132b58f19228563e5f2a2e753', 960, 540, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwmq6e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nf05zq1vip1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwmq6e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6n19oi4vip1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwmq6e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3a7qb36vip1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwmq6e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/y2xsuyrr6q1i1.png', 'https://cf.preview.redd.it/y2xsuyrr6q1i1.png?width=960&auto=webp&s=33b002b777961cabd17de97c6bdec14a475e4c0a', 960, 540, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwp48c'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i0po29as6q1i1.png', 'https://cf.preview.redd.it/i0po29as6q1i1.png?width=960&auto=webp&s=658f5648ba2c025be288a1731b9f253bcb297046', 960, 540, 1, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwp48c'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5cich4vs6q1i1.png', 'https://cf.preview.redd.it/5cich4vs6q1i1.png?width=960&auto=webp&s=bb4b582cfd87c99ec0531fa21cfb6ade8966b8c8', 960, 540, 2, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwp48c'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n3segjet6q1i1.png', 'https://cf.preview.redd.it/n3segjet6q1i1.png?width=960&auto=webp&s=66a6ea340a21ba4288024a55066b28f0ca2b7a9d', 960, 539, 3, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwp48c'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/bDI3ZmdsbmM0czFpMcWG3oMQNCeZDhc7Y1gHEUuXeP_otvKJp92vH2lSdqHq.png?format=pjpg&auto=webp&s=17b1cb012ac191ed240ff5cccaf8fb50a450fa00', NULL, NULL, NULL, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwvnbx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zuflmxwjbs1i1.jpeg', 'https://preview.redd.it/zuflmxwjbs1i1.jpeg?width=960&auto=webp&s=4a7d1661f66355fdd31670febb114032f956cf8d', 960, 536, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwwjvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/19ihqxzjbs1i1.jpeg', 'https://preview.redd.it/19ihqxzjbs1i1.jpeg?width=960&auto=webp&s=cd625641b04589a6408b8c7e79c0f09f492d7025', 960, 540, 1, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwwjvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dqtkcz2kbs1i1.jpeg', 'https://preview.redd.it/dqtkcz2kbs1i1.jpeg?width=960&auto=webp&s=c8d7602622072ea3b4a2a437246d7bbfeec303b8', 960, 480, 2, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwwjvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/spu0wfck8t1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 13:59:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx13pu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
