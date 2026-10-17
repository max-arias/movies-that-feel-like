-- 0257_seed_20261017T223140Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-17T22:32:03.698767+00:00
-- Run started: 2026-10-17T22:31:40.039467+00:00
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
SELECT p.id, 'https://preview.redd.it/eirx9uylgjuh1.jpg?width=665&format=pjpg&auto=webp&s=f21ac14af94f2f414baebbd8ee58f02d4b31053c', NULL, NULL, NULL, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x223pr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/t9ww1t2mgjuh1.jpg?width=736&format=pjpg&auto=webp&s=ddcb58bc808466c7f95d7601b51a90a6c9452857', NULL, NULL, NULL, 1, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x223pr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/jj9aex5mgjuh1.jpg?width=736&format=pjpg&auto=webp&s=45f87267d1e07ac4ef729ba00ba1b4a51138750d', NULL, NULL, NULL, 2, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x223pr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/j1spwg8mgjuh1.jpg?width=736&format=pjpg&auto=webp&s=f18bda7552c3af9b25c1bdba112bc3bb02d8e7cc', NULL, NULL, NULL, 3, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x223pr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/ZTV4cHNwbHU0a3VoMaHw1_SMs78Vl2yMftetu3YJY5bOZJHI-KxYQIgpfqEb.png?format=pjpg&auto=webp&s=9e505393469c4cc2356e8c9ff63179aadf73147b', NULL, NULL, NULL, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x24pk8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3crurtkokkuh1.jpeg', NULL, NULL, NULL, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x26az3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/h5g01tz54luh1.jpg?width=982&format=pjpg&auto=webp&s=2d53b6c52ba07cbebb7436ce456357453061577b', 'https://preview.redd.it/h5g01tz54luh1.jpg?width=960&crop=smart&auto=webp&s=e460ca7d02b1125033666e8eb4792f9abe5e76be', 960, 1173, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2860x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/vd7m51064luh1.jpg?width=1080&format=pjpg&auto=webp&s=3acc815462bda7b823d86701bfb6c9beb98fc2cc', 'https://preview.redd.it/vd7m51064luh1.jpg?width=960&crop=smart&auto=webp&s=219d79797746e01fb263a39a6e114ad1d41a24e9', 960, 944, 1, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2860x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/cavcutz54luh1.jpg?width=500&format=pjpg&auto=webp&s=d85a2c8c263c43b6d4d4218163ba40ca631a17fd', NULL, NULL, NULL, 2, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2860x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/l2j5ruz54luh1.jpg?width=828&format=pjpg&auto=webp&s=491a7e3c7dba6379b13499258621212eb703a26d', NULL, NULL, NULL, 3, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2860x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/89ouzvz54luh1.jpg?width=1200&format=pjpg&auto=webp&s=ffac08533090c66517166a16b9ae53d9e50399c1', 'https://preview.redd.it/89ouzvz54luh1.jpg?width=960&crop=smart&auto=webp&s=6abbd6d76d83ba7bbb4f0e37b892713c40fd08c2', 960, 640, 4, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2860x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/pzlvnyz54luh1.jpg?width=1169&format=pjpg&auto=webp&s=558fae83b79ce2066972600e4a8363a9d01ec3fd', 'https://preview.redd.it/pzlvnyz54luh1.jpg?width=960&crop=smart&auto=webp&s=552ccb882003ec87bcf787fb7fcb723b1675becb', 960, 1144, 5, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2860x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/lps6iyz54luh1.jpg?width=500&format=pjpg&auto=webp&s=6db21e67203e1f34cb9adcba99476832e4cd89eb', NULL, NULL, NULL, 6, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2860x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/iuv2yuz54luh1.jpg?width=734&format=pjpg&auto=webp&s=98f6007668af59f32f9d23390b05de2abfcb89cd', NULL, NULL, NULL, 7, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2860x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mbgnn0fnnkuh1.jpeg', 'https://preview.redd.it/mbgnn0fnnkuh1.jpeg?width=960&crop=smart&auto=webp&s=191730b69e9cc50bc6f578c0a52dd8c00b7127d1', 960, 427, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x28c1u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kkltbnx47luh1.jpeg', 'https://preview.redd.it/kkltbnx47luh1.jpeg?width=960&crop=smart&auto=webp&s=d8902c3ce56992fce678158fc55c4f1049fd059a', 960, 960, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x28fm7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/86xfzxkhfquh1.jpg?width=2467&format=pjpg&auto=webp&s=110cd772276002df00bb12cdc6344ff4b1d7a5e8', 'https://preview.redd.it/86xfzxkhfquh1.jpg?width=960&crop=smart&auto=webp&s=a706548a17b9e71f694874e718c525ba8c39752e', 960, 1400, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2uar9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/q84sn3uhfquh1.jpg?width=560&format=pjpg&auto=webp&s=30e684919c6a99006c7f777974e3783c289b1f1f', NULL, NULL, NULL, 1, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2uar9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/1bc9sp2yyquh1.jpg?width=600&format=pjpg&auto=webp&s=174eddd27fb1fdf4f7cae984e481f7e7e1a8f322', NULL, NULL, NULL, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2we41'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/d3rsra5yyquh1.jpg?width=736&format=pjpg&auto=webp&s=696a9e9d595047df2dc1b798c8908e935e206ff9', NULL, NULL, NULL, 1, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2we41'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/st3xnn6yyquh1.jpg?width=736&format=pjpg&auto=webp&s=f14ef091953789813c8122ab1c87558d1b1a7073', NULL, NULL, NULL, 2, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2we41'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/2tf9zn8yyquh1.jpg?width=402&format=pjpg&auto=webp&s=3eab090561cd6c6b77289d4633b3cafef3b45330', NULL, NULL, NULL, 3, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2we41'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/rtcupjyizquh1.jpg?width=941&format=pjpg&auto=webp&s=d4f85116827dd722c872f624dcf9291c78c65a86', NULL, NULL, NULL, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wgd5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/bg7uzkyizquh1.jpg?width=736&format=pjpg&auto=webp&s=a9138734f86f41dca784e655433715cef563ad34', NULL, NULL, NULL, 1, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wgd5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/izehjjyizquh1.jpg?width=736&format=pjpg&auto=webp&s=11419055e1509862b6ca67ae063d056f84f1e054', NULL, NULL, NULL, 2, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wgd5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/y10e7tvu3ruh1.jpg?width=400&format=pjpg&auto=webp&s=f405667dcc6c5bad6df0fbb6be4820a95ecfe728', NULL, NULL, NULL, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wwjq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0v6yntvu3ruh1.jpg?width=1296&format=pjpg&auto=webp&s=3ed0abd05d85ce45fbf242022b4155353f9a5c6f', 'https://preview.redd.it/0v6yntvu3ruh1.jpg?width=960&crop=smart&auto=webp&s=f6989975c5df5cf946dd9643f2f5281923f672f3', 960, 540, 1, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wwjq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/8wa3huvu3ruh1.jpg?width=2000&format=pjpg&auto=webp&s=dbdaff1a94c827880809860a589f8725d83f0559', 'https://preview.redd.it/8wa3huvu3ruh1.jpg?width=960&crop=smart&auto=webp&s=305f0b18cd36ff70c00b1d75b26f0edb256362e5', 960, 623, 2, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wwjq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/yh4betvu3ruh1.jpg?width=736&format=pjpg&auto=webp&s=509f62948620b36ab8dec411e41e585d3e42d8dd', NULL, NULL, NULL, 3, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wwjq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/dulbc1wu3ruh1.jpg?width=4032&format=pjpg&auto=webp&s=86284fac9e889463b809a626f232dead2fa532ee', 'https://preview.redd.it/dulbc1wu3ruh1.jpg?width=960&crop=smart&auto=webp&s=3d964d5ef31a48e129d6df73d2b3e3c1e8abb435', 960, 720, 4, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wwjq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/q6nu22wu3ruh1.jpg?width=3024&format=pjpg&auto=webp&s=3db8882620ff1fc941b84a4ec14b0dd91ccb35d9', 'https://preview.redd.it/q6nu22wu3ruh1.jpg?width=960&crop=smart&auto=webp&s=59c1aba6aa793c2aa5232f683f27777c82be8a30', 960, 1280, 5, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wwjq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/sbogq1wu3ruh1.jpg?width=4032&format=pjpg&auto=webp&s=74e89aee5833cd255939bae2dbca80b8c1f11b38', 'https://preview.redd.it/sbogq1wu3ruh1.jpg?width=960&crop=smart&auto=webp&s=a001b973212fd474876c64f5b3707216e2d9e246', 960, 720, 6, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2wwjq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/tkqxw1aqaruh1.jpg?width=960&format=pjpg&auto=webp&s=fb4f5226bbcd9013fdea4c82e305545e3b461b65', 'https://preview.redd.it/tkqxw1aqaruh1.jpg?width=960&crop=smart&auto=webp&s=b58b1adbb5761e1ed9e111f096df948e8ce0a6d3', 960, 960, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xmyf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/aotlu1aqaruh1.jpg?width=960&format=pjpg&auto=webp&s=b5629aaa5f91a68b4f09589cc8f7b9958a633f54', 'https://preview.redd.it/aotlu1aqaruh1.jpg?width=960&crop=smart&auto=webp&s=bd19feeee746954c17b04f80d6f81de70f1a1897', 960, 960, 1, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xmyf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/gq7h22aqaruh1.jpg?width=960&format=pjpg&auto=webp&s=ea3ab5b2de1530ceec227cec7a43ac35878e9865', 'https://preview.redd.it/gq7h22aqaruh1.jpg?width=960&crop=smart&auto=webp&s=48f058868295a67bc11530bda32e1657ef8a82eb', 960, 960, 2, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xmyf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/9gvzakb9cruh1.jpg?width=1179&format=pjpg&auto=webp&s=62d4228f23604d8c5b586cef915fea84219cb9e9', 'https://preview.redd.it/9gvzakb9cruh1.jpg?width=960&crop=smart&auto=webp&s=8cd847bede7165cb65b5f5205c19f23e1ace7149', 960, 941, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xskz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/qjomugb9cruh1.jpg?width=1179&format=pjpg&auto=webp&s=614caaf462c500357880507fc6271d3e84c76de3', 'https://preview.redd.it/qjomugb9cruh1.jpg?width=960&crop=smart&auto=webp&s=c64578fdf3bc6a8d3b496c5d8f4fac3c3af7274b', 960, 1336, 1, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xskz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/rpg20sb9cruh1.jpg?width=1179&format=pjpg&auto=webp&s=fab09ca4a9c09a2882be86de09ade8f1370e304d', 'https://preview.redd.it/rpg20sb9cruh1.jpg?width=960&crop=smart&auto=webp&s=80038837ff7e12b475ae4a97b8d27a677bf5aceb', 960, 1623, 2, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xskz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/jz6vx1skdruh1.jpg?width=960&format=pjpg&auto=webp&s=e3374dcbfd1becb61fa96f4c8e9e1a0282db6f4c', 'https://preview.redd.it/jz6vx1skdruh1.jpg?width=960&crop=smart&auto=webp&s=450ace4d385900283a8996eb3097079bae789bd6', 960, 960, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xxc5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/4bw4czrkdruh1.jpg?width=960&format=pjpg&auto=webp&s=5f72405f6a9e31d12dcad5dbf6d7a646d698a2be', 'https://preview.redd.it/4bw4czrkdruh1.jpg?width=960&crop=smart&auto=webp&s=0a5af77b72c7835734b03aa32876168f0ee04039', 960, 960, 1, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xxc5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0r923zrkdruh1.jpg?width=960&format=pjpg&auto=webp&s=6b81632948b4e9eb2b9bbcf8d92337a73560f279', 'https://preview.redd.it/0r923zrkdruh1.jpg?width=960&crop=smart&auto=webp&s=41098294afad13c5b2360c1beabf3e72e0343f09', 960, 960, 2, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2xxc5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bl4sz3ktfruh1.jpeg', NULL, NULL, NULL, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2y5ia'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/am56dGdycDJncnVoMdBfv1R98T-zNuxCMjy4gej7lUHK--Ij1RxwqQx5eTa0.png?format=pjpg&auto=webp&s=1c3fd347271cd210754fc559f248193e91329b91', NULL, NULL, NULL, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2y7hl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/eXZ1eHR3OXhpcnVoMYguLWqTuK4K03mGxR0ajP9wukcrwFvPRxscRnLQKcAy.png?format=pjpg&auto=webp&s=afc93a1e46b973d60664885d1220e4d866371569', NULL, NULL, NULL, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2yh97'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/nk7sQFDhYhzd93qjGayeqZ9gthorFth4bpz7ZWlD4Hs.jpeg?auto=webp&s=de412919c794dfec3eabb260f0a5d4c58c63ced9', NULL, NULL, NULL, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2yj01'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yjj91at6lruh1.png', 'https://preview.redd.it/yjj91at6lruh1.png?width=960&crop=smart&auto=webp&s=d4da4a0e80a5a4f419d897c1dcf1022965d40563', 960, 548, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2ypjv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/pmfhewz7nruh1.jpg?width=792&format=pjpg&auto=webp&s=a7c1343957d81afb65e56ed4cf473dcdff0ba63a', NULL, NULL, NULL, 0, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2z0eo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/cb9913slnruh1.jpg?width=1280&format=pjpg&auto=webp&s=ec02ee9ee8a1053be664a44d567a64c000d1105f', 'https://preview.redd.it/cb9913slnruh1.jpg?width=960&crop=smart&auto=webp&s=f2daeb81a71fa10c587953826dfc4709123f0050', 960, 720, 1, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2z0eo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0blsavx6oruh1.png?width=1372&format=png&auto=webp&s=ce25401996fbb1469a287fb1b279a8903ba23faf', 'https://preview.redd.it/0blsavx6oruh1.png?width=960&crop=smart&auto=webp&s=4a56e175be46af21187b9a7df83643275099acd7', 960, 712, 2, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2z0eo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/yc5ukul7oruh1.png?width=1236&format=png&auto=webp&s=fdc38f4b13e5fb34aa9ed1fcf108902adc4d8291', 'https://preview.redd.it/yc5ukul7oruh1.png?width=960&crop=smart&auto=webp&s=7f62a558b64195dc97e8da963632707498fcd4a0', 960, 950, 3, '2026-10-17 22:32:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2z0eo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
