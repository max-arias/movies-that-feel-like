-- 0247_seed_20261017T155234Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-17T15:53:06.900848+00:00
-- Run started: 2026-10-17T15:52:34.823177+00:00
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
SELECT p.id, 'https://preview.redd.it/b9y88ndekwuh1.jpg?width=2869&format=pjpg&auto=webp&s=292cb5489e64740ac796d74300660f07a4f1498a', 'https://preview.redd.it/b9y88ndekwuh1.jpg?width=960&crop=smart&auto=webp&s=6c54c9064b1dc6181507030809c7bfb7a8a99948', 960, 639, 0, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3jgnj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ozmprmdekwuh1.jpg?width=1024&format=pjpg&auto=webp&s=5bfc7116a8086ae59b3362d2ae04f11845a4f96d', 'https://preview.redd.it/ozmprmdekwuh1.jpg?width=960&crop=smart&auto=webp&s=40b97c842a1fa564844bbf6e248693642e65fe84', 960, 640, 1, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3jgnj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/fsnukudekwuh1.jpg?width=2500&format=pjpg&auto=webp&s=1dcd02ae8bbac72f640d080e85828cc64e104164', 'https://preview.redd.it/fsnukudekwuh1.jpg?width=960&crop=smart&auto=webp&s=4cc1893003d1304837f4c3ebac1bf9230ed782a5', 960, 960, 2, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3jgnj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/7fpicndekwuh1.jpg?width=399&format=pjpg&auto=webp&s=4644bfe475e7b78ec4b6b09b425ba597408d2d77', NULL, NULL, NULL, 3, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3jgnj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/a18i5ldekwuh1.jpg?width=736&format=pjpg&auto=webp&s=2cf7e335cb5f398df715b33f272df5e94d5e287a', NULL, NULL, NULL, 4, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3jgnj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/7p5i8ndekwuh1.jpg?width=472&format=pjpg&auto=webp&s=0ac98006f8b38f2e135ed9f2edbb0ab3b9e05915', NULL, NULL, NULL, 5, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3jgnj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/npd1mndekwuh1.jpg?width=678&format=pjpg&auto=webp&s=c563add23e6a2e771183876248bccb1f2c714978', NULL, NULL, NULL, 6, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3jgnj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/u930pndekwuh1.jpg?width=1024&format=pjpg&auto=webp&s=55f54e34e4663f96c606dae61e320ee97cfeb5b9', 'https://preview.redd.it/u930pndekwuh1.jpg?width=960&crop=smart&auto=webp&s=0bfb2de7df579f849eea2e0e298c64444cac0395', 960, 639, 7, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3jgnj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0ah57zacqwuh1.jpeg', 'https://preview.redd.it/0ah57zacqwuh1.jpeg?width=960&crop=smart&auto=webp&s=c493e6c26ea7925d472902cf10ef49fdc384cd35', 960, 720, 0, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3k8uj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/f01tumvf5xuh1.jpg?width=675&format=pjpg&auto=webp&s=9c69655bbf2dd0c1a01757338d84aca00a0879f3', NULL, NULL, NULL, 0, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3m3vz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/dabocl1g5xuh1.jpg?width=736&format=pjpg&auto=webp&s=3bd072243580112034362cd259f2aa740f11c4a7', NULL, NULL, NULL, 1, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3m3vz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/rvrujt6g5xuh1.jpg?width=736&format=pjpg&auto=webp&s=49b20f0cccf2a7001de2b100965faa03e85dd078', NULL, NULL, NULL, 2, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3m3vz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/mwtg6s9g5xuh1.jpg?width=500&format=pjpg&auto=webp&s=6abd5f39a5f2ea47aaafd9eb5d1be1e782fac7b9', NULL, NULL, NULL, 3, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3m3vz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/dcv2yveg5xuh1.jpg?width=736&format=pjpg&auto=webp&s=f6711e1a9bdb2d0a55c9ca48eaff39950f7420e6', NULL, NULL, NULL, 4, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3m3vz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/6oE1W1yJ37wK15iJ0A_HAgO3tE9qj3BokAppD8x9GPU.jpeg?auto=webp&s=d229f251ff9aa3bbae42eb3ad8c2d69ce590b2bc', NULL, NULL, NULL, 0, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mgaw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/l3phlkb0axuh1.jpg?width=1206&format=pjpg&auto=webp&s=0b994a2298ec82a3f13ad84ef7aae3a33806f9eb', 'https://preview.redd.it/l3phlkb0axuh1.jpg?width=960&crop=smart&auto=webp&s=0b5d1451dabfc039498f8477212268a4cabbed58', 960, 1701, 0, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mn3f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/r1hy0kb0axuh1.jpg?width=1206&format=pjpg&auto=webp&s=b79257d0f3aac3424a6ab9a74f60fa1cfe6952eb', 'https://preview.redd.it/r1hy0kb0axuh1.jpg?width=960&crop=smart&auto=webp&s=c9d2c687dd4876f6fb7907bead7aa00ed57f4760', 960, 1201, 1, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mn3f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ubbrkkb0axuh1.jpg?width=418&format=pjpg&auto=webp&s=1e4fcdd0517b4c01f2100d0a25664590328a1e33', NULL, NULL, NULL, 2, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mn3f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/3ryi1kb0axuh1.jpg?width=845&format=pjpg&auto=webp&s=86461092bbbd3ee8ad3575cc4c3f507c6d172c26', NULL, NULL, NULL, 3, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mn3f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/6i0vwib0axuh1.jpg?width=480&format=pjpg&auto=webp&s=e0c948489a50947c2fc80d692e6ae1389f37a20e', NULL, NULL, NULL, 4, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mn3f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p0n6p1b3axuh1.jpeg', NULL, NULL, NULL, 0, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3mnfh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0764lw92jxuh1.png?width=678&format=png&auto=webp&s=20c2b81f770370004fd84f6a1627714af5665322', NULL, NULL, NULL, 0, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3notg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/clza65g2jxuh1.png?width=400&format=png&auto=webp&s=404833d7dcbfb1efc50356aceecd41a74f41d58b', NULL, NULL, NULL, 1, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3notg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/6k0xu2i2jxuh1.jpg?width=398&format=pjpg&auto=webp&s=960821f5b1e2212ab4907707934d6d8cb1849bec', NULL, NULL, NULL, 2, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3notg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/7wv6tsi2jxuh1.jpg?width=1920&format=pjpg&auto=webp&s=bd60747209f055ee06c1cd432a03138eb5d9bd98', 'https://preview.redd.it/7wv6tsi2jxuh1.jpg?width=960&crop=smart&auto=webp&s=b616c4169b1e4e2e54e39040071c0e7972818857', 960, 663, 3, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3notg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/utyb4vq2jxuh1.jpg?width=728&format=pjpg&auto=webp&s=1b8c0ef21fcefcf22f7f5b3af01ba41cff422d2a', NULL, NULL, NULL, 4, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3notg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/1n6mgxr2jxuh1.png?width=480&format=png&auto=webp&s=f359acb808c04e6d8b57545fa854b8012ce10662', NULL, NULL, NULL, 5, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x3notg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wanmkm2ovbvh1.jpeg', 'https://preview.redd.it/wanmkm2ovbvh1.jpeg?width=960&crop=smart&auto=webp&s=057db907bf780a541709f805d82aa661e1bf372a', 960, 400, 0, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5dfyg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1voybup7ccvh1.jpeg', 'https://preview.redd.it/1voybup7ccvh1.jpeg?width=960&crop=smart&auto=webp&s=013a0eb0fd98fb9eb5d3796e56794c82b8b9c4cd', 960, 720, 0, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5fb9e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/77ixc1hasfvh1.jpg?width=384&format=pjpg&auto=webp&s=8c2d4a42ed33fcbbc3c40d13f1edce50264520c6', NULL, NULL, NULL, 0, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5rjjt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0r02i0zasfvh1.jpg?width=1920&format=pjpg&auto=webp&s=2938f8553d6356540bcf7cc56fdb8ae971c17957', 'https://preview.redd.it/0r02i0zasfvh1.jpg?width=960&crop=smart&auto=webp&s=f2920fd4bdd0b9f991c3deb6e226432930d7c100', 960, 540, 1, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5rjjt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/cifhm49bsfvh1.jpg?width=1920&format=pjpg&auto=webp&s=8835e62c882e12ac7fd820bbc084a9acfd4b23ae', 'https://preview.redd.it/cifhm49bsfvh1.jpg?width=960&crop=smart&auto=webp&s=286d34473ca0d36e67d01a0fcfc1f29883c24eba', 960, 464, 2, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5rjjt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/p66vw8y96gvh1.jpg?width=736&format=pjpg&auto=webp&s=d784c8f2a5bfc9f5b24f1e646aaac2d0837bd96d', NULL, NULL, NULL, 0, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5thh2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/yuc1o6y96gvh1.jpg?width=735&format=pjpg&auto=webp&s=6afb01a691b859dc93487276a152c7a81157d257', NULL, NULL, NULL, 1, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5thh2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ngnsi7y96gvh1.jpg?width=736&format=pjpg&auto=webp&s=0c456383e9b78a66094c2d4d43c4156ae0a454e2', NULL, NULL, NULL, 2, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5thh2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/2175axnshgvh1.jpg?width=800&format=pjpg&auto=webp&s=966f749992658a11da50c03a8110204cb00308f9', NULL, NULL, NULL, 0, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5v740'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/32mz0ynshgvh1.jpg?width=1024&format=pjpg&auto=webp&s=524a24f05fb65bb930c7b5e462b5b6497985e8d9', 'https://preview.redd.it/32mz0ynshgvh1.jpg?width=960&crop=smart&auto=webp&s=0b82aa832cb644ba27dd793962dbf97cf71c853e', 960, 1440, 1, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5v740'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/rq20pxnshgvh1.jpg?width=961&format=pjpg&auto=webp&s=7edf4c88aa35ecc2161c3bac9f27792c986d73f9', 'https://preview.redd.it/rq20pxnshgvh1.jpg?width=960&crop=smart&auto=webp&s=35428d9d9a0a7c0f2319f900e5e04904cf54a25b', 960, 1278, 2, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5v740'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/v5xopxnshgvh1.jpg?width=1200&format=pjpg&auto=webp&s=7bca096bbb191f06bad6b7e485bec8773cb38ad9', 'https://preview.redd.it/v5xopxnshgvh1.jpg?width=960&crop=smart&auto=webp&s=c7b35485b5e08eabd454fd72ae802caca52c791c', 960, 1201, 3, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5v740'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/pkxpa4molgvh1.jpg?width=1125&format=pjpg&auto=webp&s=4b9e0041cbb0b56c6f5a94331fcbf722ee10d37e', 'https://preview.redd.it/pkxpa4molgvh1.jpg?width=960&crop=smart&auto=webp&s=725c9308135d6be15ab9868deda24307f3b06072', 960, 948, 0, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/b9cay4molgvh1.jpg?width=1125&format=pjpg&auto=webp&s=9827017d2aa2ac82537f83af4f30134a0cd9a3bb', 'https://preview.redd.it/b9cay4molgvh1.jpg?width=960&crop=smart&auto=webp&s=11a188598636ad0a14b1de53585b0d3544dcc0df', 960, 955, 1, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/856qr3molgvh1.jpg?width=1125&format=pjpg&auto=webp&s=abb42cd0b6fa77bd463cf201831267d379dace24', 'https://preview.redd.it/856qr3molgvh1.jpg?width=960&crop=smart&auto=webp&s=bbd0297806ab7cee0ed66c117bbc4b522af58619', 960, 934, 2, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/j5vn94molgvh1.jpg?width=1125&format=pjpg&auto=webp&s=456778453e202f75339f2cdfa9423685346c3a5d', 'https://preview.redd.it/j5vn94molgvh1.jpg?width=960&crop=smart&auto=webp&s=3900f79c7b97d9df9e29735bf3202ab5e2da8254', 960, 1920, 3, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/r7qn34molgvh1.jpg?width=1125&format=pjpg&auto=webp&s=6d36d11d3f46c0a7613762773efe99181212f243', 'https://preview.redd.it/r7qn34molgvh1.jpg?width=960&crop=smart&auto=webp&s=ffa71c6a854ed0987247a7e2fde4250f7a70e715', 960, 467, 4, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/96qny3molgvh1.jpg?width=1125&format=pjpg&auto=webp&s=5b8e225087d0f1291500284ad19ea62da012dcd7', 'https://preview.redd.it/96qny3molgvh1.jpg?width=960&crop=smart&auto=webp&s=2ce70cfc4c7a8aa96eeb9129371bbb817150d671', 960, 913, 5, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/mjvql4molgvh1.jpg?width=1125&format=pjpg&auto=webp&s=fa95a610f6772a903c573d79a88920c7b8569c25', 'https://preview.redd.it/mjvql4molgvh1.jpg?width=960&crop=smart&auto=webp&s=7f076807d8377743959fe5d4c9aaea6db273b3fe', 960, 656, 6, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/zhnju3molgvh1.jpg?width=1125&format=pjpg&auto=webp&s=c29a258c7d6473579680e3cfe0868a5fe0fada05', 'https://preview.redd.it/zhnju3molgvh1.jpg?width=960&crop=smart&auto=webp&s=0f2e329febc6c95965d9979346f9fe6994669939', 960, 1129, 7, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/1oia04molgvh1.jpg?width=1125&format=pjpg&auto=webp&s=3d242ec59405a94b4b1dd9ecdb7004dbbb9ab365', 'https://preview.redd.it/1oia04molgvh1.jpg?width=960&crop=smart&auto=webp&s=dd356947132a53071f1c80a557fd1402f1fb4b69', 960, 680, 8, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/oxx2e4molgvh1.jpg?width=1125&format=pjpg&auto=webp&s=a94ad18cb2ece0bbebd84a331889a2d1365ee5aa', 'https://preview.redd.it/oxx2e4molgvh1.jpg?width=960&crop=smart&auto=webp&s=10d338c485f531d1aca974599b811da77b78af45', 960, 934, 9, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ywy364molgvh1.jpg?width=1125&format=pjpg&auto=webp&s=70c2a688af675a92213933e934f6c947d802a722', 'https://preview.redd.it/ywy364molgvh1.jpg?width=960&crop=smart&auto=webp&s=3b453cbb805276179278245206cd33023f108864', 960, 645, 10, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/2buio4molgvh1.jpg?width=1125&format=pjpg&auto=webp&s=3aafef843a83b075d0a24249cd133dffa471ff6e', 'https://preview.redd.it/2buio4molgvh1.jpg?width=960&crop=smart&auto=webp&s=b01a9ee08c538faca94e30dd49f93bd7714929c2', 960, 1669, 11, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/qoc034molgvh1.jpg?width=1125&format=pjpg&auto=webp&s=6d3820abd4f024a7be0f9d6504351bd0e49fb40c', 'https://preview.redd.it/qoc034molgvh1.jpg?width=960&crop=smart&auto=webp&s=76147983861b5a4aab6b5ae485258d1d2a8cbfd2', 960, 887, 12, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/gtgcl4molgvh1.jpg?width=1125&format=pjpg&auto=webp&s=68f641efe7ed11aa4fd3e6ff23b0bf0807f795ed', 'https://preview.redd.it/gtgcl4molgvh1.jpg?width=960&crop=smart&auto=webp&s=39bf896d54845224fcf3f8bbcffd877343a00fac', 960, 1217, 13, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vs4n'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/gt0t2sk2mgvh1.jpg?width=1179&format=pjpg&auto=webp&s=515be408953039a2d6d4744c1e43691c906aa3ad', 'https://preview.redd.it/gt0t2sk2mgvh1.jpg?width=960&crop=smart&auto=webp&s=964f3057654c86b81e1bb90ea799e1f360822124', 960, 1604, 0, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vu5w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ylel2sk2mgvh1.jpg?width=1179&format=pjpg&auto=webp&s=034b7607f38aa0c8ef20c3be9ea5dbe567f4a334', 'https://preview.redd.it/ylel2sk2mgvh1.jpg?width=960&crop=smart&auto=webp&s=7f5db2bf2cd8c59ce5d67c637a017dad823b2c27', 960, 1187, 1, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vu5w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/rxug7qk2mgvh1.jpg?width=1131&format=pjpg&auto=webp&s=cd30ab5439f0586d0566de9f043937bb9e66d1d7', 'https://preview.redd.it/rxug7qk2mgvh1.jpg?width=960&crop=smart&auto=webp&s=2398e2ee654fe174ff56bd51ad0587923091ec11', 960, 1515, 2, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vu5w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/l88fpqk2mgvh1.jpg?width=1179&format=pjpg&auto=webp&s=53cb39a6add5e8343bb2d04f90fda5605b573c72', 'https://preview.redd.it/l88fpqk2mgvh1.jpg?width=960&crop=smart&auto=webp&s=bf0893e35ee1d70a88a87e3f4143afe846774ed4', 960, 1477, 3, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vu5w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/fymnyqk2mgvh1.jpg?width=1169&format=pjpg&auto=webp&s=fbb72a0a6bf17666c590902765c3580392bea7ac', 'https://preview.redd.it/fymnyqk2mgvh1.jpg?width=960&crop=smart&auto=webp&s=20709311fa343ad2af0af9ef140153ff90e3bc8c', 960, 1567, 4, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vu5w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/20n31rk2mgvh1.jpg?width=1179&format=pjpg&auto=webp&s=78a759b54084b7fc9cb6dd6b723ab58ba094ec50', 'https://preview.redd.it/20n31rk2mgvh1.jpg?width=960&crop=smart&auto=webp&s=fc119eef597082364c00327e758287097cc8e4d8', 960, 1205, 5, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vu5w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/y03gvqk2mgvh1.jpg?width=1179&format=pjpg&auto=webp&s=35fdf46ca197c1c9475cba762a497d483f941d08', 'https://preview.redd.it/y03gvqk2mgvh1.jpg?width=960&crop=smart&auto=webp&s=c91f1171297b9d99d9398d3d0a18ceed9a1ba0e0', 960, 945, 6, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5vu5w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/w5bdid3m3hvh1.jpg?width=1920&format=pjpg&auto=webp&s=208b904716b8a8a569bd6e570d8038f30cec4257', 'https://preview.redd.it/w5bdid3m3hvh1.jpg?width=960&crop=smart&auto=webp&s=071b2c3a7bffbfbb8aca0711124d2f378f491522', 960, 540, 0, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5ygxc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/5xjzmf3m3hvh1.jpg?width=3840&format=pjpg&auto=webp&s=1a33b5d90d22506d24c7d0bc4b92a258ab72cee1', 'https://preview.redd.it/5xjzmf3m3hvh1.jpg?width=960&crop=smart&auto=webp&s=267543bc4541e865153f649f985b72ee3b96fd9b', 960, 540, 1, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5ygxc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/4raufj3m3hvh1.jpg?width=550&format=pjpg&auto=webp&s=24d1e0486a30ddc0085a1cd76e47da49e2a2ee85', NULL, NULL, NULL, 2, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5ygxc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/n5go7k3m3hvh1.jpg?width=1920&format=pjpg&auto=webp&s=b06d62771583153254266757fa09a38aff7b24a3', 'https://preview.redd.it/n5go7k3m3hvh1.jpg?width=960&crop=smart&auto=webp&s=f97127882e846fa1aa7a17bb71f646185f72aec7', 960, 540, 3, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5ygxc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/aWxpY2tzaHBuaXZoMTweQnobYbvpJ3Z_qa68i7AMiREbEJT4tJkQwVBOwlAb.png?format=pjpg&auto=webp&s=63b4acf41463b794162ef292f2283fff0a0dbaf4', NULL, NULL, NULL, 0, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x6689r'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gr8q46gbrivh1.jpg', NULL, NULL, NULL, 0, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x66nz1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zh2mpojbrivh1.jpg', NULL, NULL, NULL, 1, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x66nz1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b9okosmbrivh1.jpg', NULL, NULL, NULL, 2, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x66nz1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dake5kpbrivh1.jpg', NULL, NULL, NULL, 3, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x66nz1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zrjb33rbrivh1.jpg', NULL, NULL, NULL, 4, '2026-10-17 15:53:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x66nz1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
