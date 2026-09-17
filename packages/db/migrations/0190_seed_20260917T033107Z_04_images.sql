-- 0190_seed_20260917T033107Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-09-17T03:31:35.377349+00:00
-- Run started: 2026-09-17T03:31:07.638909+00:00
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
SELECT p.id, 'https://preview.redd.it/5k7u4auk1aph1.jpg?width=1080&format=pjpg&auto=webp&s=5cec4c1ad168f3351477cc17fe829b04ff9fd987', 'https://preview.redd.it/5k7u4auk1aph1.jpg?width=960&crop=smart&auto=webp&s=01073b5386f1605c57e31dd1c631f196ee1f4988', 960, 1702, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf5pxn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/eipektzk1aph1.jpg?width=1080&format=pjpg&auto=webp&s=ed047be8d8616f022d40aa6a87f2f8c9c9a3b315', 'https://preview.redd.it/eipektzk1aph1.jpg?width=960&crop=smart&auto=webp&s=b6ddd7c68fe2605372846051c30caf21e4130900', 960, 1684, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf5pxn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tz4yu733daph1.jpeg', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf74e5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/35illif1eaph1.jpg?width=736&format=pjpg&auto=webp&s=f1ccaa4de14ae47e354999abb6815b663e9fb3e4', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf78iq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/hjxokhf1eaph1.jpg?width=736&format=pjpg&auto=webp&s=75f16264ab243999541900d70f71bd3ef4b2e56e', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf78iq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/6kjosjf1eaph1.jpg?width=736&format=pjpg&auto=webp&s=48577fc074ae2e0be6d1838c8c5d7e66394f8913', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf78iq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/y50wy2vhuaph1.jpg?width=1200&format=pjpg&auto=webp&s=868a05f92ad3b0ef00f31b502852bbf1808408fb', 'https://preview.redd.it/y50wy2vhuaph1.jpg?width=960&crop=smart&auto=webp&s=9b705f411f704f8e6edbbc383ad641702ed635a4', 960, 716, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9hl2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ojnrf3vhuaph1.jpg?width=1200&format=pjpg&auto=webp&s=63e8c87c17ab6bdebad7a3d273cfcd2981134ce2', 'https://preview.redd.it/ojnrf3vhuaph1.jpg?width=960&crop=smart&auto=webp&s=71b2a5cf93982825441697e873067578ceb20147', 960, 720, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9hl2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/lcyae4vhuaph1.jpg?width=1200&format=pjpg&auto=webp&s=2cf19a3c4826b4fcf858ab2e730af8c7ad35aaad', 'https://preview.redd.it/lcyae4vhuaph1.jpg?width=960&crop=smart&auto=webp&s=99bf3aeb420b19c95f74d2517c6df8d94147bf0d', 960, 948, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9hl2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/73cui3vhuaph1.jpg?width=990&format=pjpg&auto=webp&s=ae8fe2ca2510878f04bf3f09c498d2bd754e94c4', 'https://preview.redd.it/73cui3vhuaph1.jpg?width=960&crop=smart&auto=webp&s=f94330a0bac6b7f98a74f959e739570087e1953e', 960, 719, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9hl2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/kocsh4vhuaph1.jpg?width=850&format=pjpg&auto=webp&s=c7b9cd80c366babfcafb8bc8dd8f581c62076553', NULL, NULL, NULL, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9hl2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/3tz1o3vhuaph1.jpg?width=736&format=pjpg&auto=webp&s=6e872ca4fb42156806f51a303c29668424a879a0', NULL, NULL, NULL, 5, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9hl2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/9i3tq4vhuaph1.jpg?width=1080&format=pjpg&auto=webp&s=ef050ac49feab1e34bf7e2979cfd7a428a8e0582', 'https://preview.redd.it/9i3tq4vhuaph1.jpg?width=960&crop=smart&auto=webp&s=9e8ef6823e0e203521afa31d67327412e9978197', 960, 720, 6, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9hl2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/kffiv3vhuaph1.jpg?width=461&format=pjpg&auto=webp&s=6d94e7631f41523a4c9f75b7828e2f57b24f5931', NULL, NULL, NULL, 7, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9hl2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/lrludr000bph1.jpg?width=408&format=pjpg&auto=webp&s=a99e83e0a47c0cd1111f079a36264cfdb5814b82', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfaa5x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/iexri7500bph1.jpg?width=736&format=pjpg&auto=webp&s=c1d8e1fecd1f3ccb426fc541bded58a6b7c7e000', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfaa5x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/z8rhay700bph1.jpg?width=626&format=pjpg&auto=webp&s=db83c92acf7e828495d85251f53dc0282db001d4', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfaa5x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ox27mha00bph1.jpg?width=736&format=pjpg&auto=webp&s=edd548362c690584b4921730227cd4f2d5d06e23', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfaa5x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/8tsrkac00bph1.jpg?width=736&format=pjpg&auto=webp&s=d04a52633089f730c035e9b16ae750b01df11673', NULL, NULL, NULL, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfaa5x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/1ghj9mo8ebph1.jpg?width=500&format=pjpg&auto=webp&s=424065b75119580acb24de7bf15ef16c7c3252ea', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfcd88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/z4um6mo8ebph1.jpg?width=480&format=pjpg&auto=webp&s=800c6fdbf650cae9c799d364bed2cb1d01f273d2', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfcd88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/4hjwfno8ebph1.jpg?width=1200&format=pjpg&auto=webp&s=eed41ee61d049ab5d234890eb71427a9556cf15c', 'https://preview.redd.it/4hjwfno8ebph1.jpg?width=960&crop=smart&auto=webp&s=a881bd41a38373a6e519fc26c4cd5c30815cfb3f', 960, 720, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfcd88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/gqk9emo8ebph1.jpg?width=664&format=pjpg&auto=webp&s=dcd4601345474140102499128b0911cd444fed92', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfcd88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/j1qzdlo8ebph1.jpg?width=400&format=pjpg&auto=webp&s=bc7eb186fec7262ffaa595ea20a003cb2b734083', NULL, NULL, NULL, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfcd88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/2fuawlo8ebph1.jpg?width=696&format=pjpg&auto=webp&s=9e41d7de1aa56d183b5387b73b8d48110e450395', NULL, NULL, NULL, 5, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfcd88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/tprtlmo8ebph1.jpg?width=736&format=pjpg&auto=webp&s=4baef6b843671a2dd6a073f8ddbf83c6d1920e06', NULL, NULL, NULL, 6, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfcd88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/xpvywlo8ebph1.jpg?width=1200&format=pjpg&auto=webp&s=d805c6ddfc20b2a559460497256585ebe253ac8c', 'https://preview.redd.it/xpvywlo8ebph1.jpg?width=960&crop=smart&auto=webp&s=bce62123a704aeb4d0b5089e71ef0bf82385fa7a', 960, 1440, 7, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfcd88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/wg2y4mo8ebph1.jpg?width=1200&format=pjpg&auto=webp&s=980e8fee7f0c6c6993b177be9ca55ee49bc9f443', 'https://preview.redd.it/wg2y4mo8ebph1.jpg?width=960&crop=smart&auto=webp&s=b5a567e17e99f888ca7eda69abfd63f362e4f479', 960, 1179, 8, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfcd88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/3ji67nlgubph1.jpg?width=1195&format=pjpg&auto=webp&s=9eedc0bce377e96f3e881642f4d7ccf56dc79fee', 'https://preview.redd.it/3ji67nlgubph1.jpg?width=960&crop=smart&auto=webp&s=02aa89e96716f43780e9633e2e32b9ffc9116487', 960, 960, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfet3p'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/140bkllgubph1.jpg?width=1078&format=pjpg&auto=webp&s=e7dc5a54d0866b52429098e7b07a81003779b293', 'https://preview.redd.it/140bkllgubph1.jpg?width=960&crop=smart&auto=webp&s=8278b24223f9f1486681a128669240b87011c088', 960, 1152, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfet3p'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/weoa5mlgubph1.jpg?width=1200&format=pjpg&auto=webp&s=bbbc5a9098eef41d803073138778a31ca401fb8a', 'https://preview.redd.it/weoa5mlgubph1.jpg?width=960&crop=smart&auto=webp&s=f88e03949eeb2c79968336405b4cb6d9acf2309c', 960, 1280, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfet3p'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/jahjg6jl3cph1.jpg?width=1000&format=pjpg&auto=webp&s=ff106c2e03162b747e0b5ac133ea80d65818271f', 'https://preview.redd.it/jahjg6jl3cph1.jpg?width=960&crop=smart&auto=webp&s=c9f42b1b31630c7a5bc455f2d55c7f7c80746098', 960, 719, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfg8eb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/jsei67jl3cph1.jpg?width=626&format=pjpg&auto=webp&s=c9298bb21f76ef59fc8141337ea26fba6f7db927', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfg8eb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/v3zn2ojl3cph1.jpg?width=525&format=pjpg&auto=webp&s=57f3030de121ffcb16760bec4f032902073fee6f', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfg8eb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/lr8njajl3cph1.jpg?width=1280&format=pjpg&auto=webp&s=e61df5636a262a30c6fcf724c8de37dc5d88dcfa', 'https://preview.redd.it/lr8njajl3cph1.jpg?width=960&crop=smart&auto=webp&s=1e7092972251b85124dfad93dc864238114a3f2a', 960, 702, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfg8eb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/j7u1cbzt4cph1.jpg?width=750&format=pjpg&auto=webp&s=3727e0c642c65ace9ded55b15d082ffcc3449325', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfgdxi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/77vnv1zt4cph1.jpg?width=800&format=pjpg&auto=webp&s=8eeddf63896ffb37e7bfd79afc7df4a2827c187d', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfgdxi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/680vd5zh5cph1.jpeg', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfghr6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cjvtz3pz6cph1.jpeg', 'https://preview.redd.it/cjvtz3pz6cph1.jpeg?width=960&crop=smart&auto=webp&s=416e8748c9e6475aa621066a85217c1a4016688b', 960, 633, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfgqdx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/pi46ix4ubcph1.jpg?width=735&format=pjpg&auto=webp&s=9f86c5b5934b0b6289102fddeaf10ce96c7035f6', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfhgic'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/as0j4eaubcph1.jpg?width=736&format=pjpg&auto=webp&s=7813c477b9482982c8efa5e0c9dffd5ac3903244', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfhgic'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/c4cralfubcph1.jpg?width=499&format=pjpg&auto=webp&s=513d8fbf71e574fb60f42a677cad7cd8e92a15e0', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfhgic'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/f7xdy4o5fcph1.jpg?width=735&format=pjpg&auto=webp&s=f2c3685ac50473c7d15d0083fd31c1bc79183190', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfhy3v'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/jgijrou5fcph1.jpg?width=736&format=pjpg&auto=webp&s=1b15f75b1cb2297d0fbe9157147ef86bee7389cc', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfhy3v'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/yhtzzrwxucph1.jpg?width=736&format=pjpg&auto=webp&s=1a564fef9170d0fd7514258f4c3ec16e24dc5ffb', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfk8bu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/boeh040yucph1.jpg?width=736&format=pjpg&auto=webp&s=b7cbafc278834c6b6610029e89268982d3441c5d', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfk8bu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/39pner2yucph1.jpg?width=736&format=pjpg&auto=webp&s=94dfcfb17c2bfb3dfe9eeab3910f8c1c936dd972', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfk8bu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/gk2a684yucph1.jpg?width=736&format=pjpg&auto=webp&s=5aabce2cdfda6ba1413f7388172c050bd14a3bd0', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfk8bu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/x8xbfs5yucph1.jpg?width=736&format=pjpg&auto=webp&s=cc2efb9878d17e24c68874711289156709d3ba81', NULL, NULL, NULL, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfk8bu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/9gn0yl7yucph1.jpg?width=736&format=pjpg&auto=webp&s=c7adb0063e3fd8c5153a1cdd51e95c6a5045f62c', NULL, NULL, NULL, 5, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfk8bu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vslqp4jnwcph1.jpeg', 'https://preview.redd.it/vslqp4jnwcph1.jpeg?width=960&crop=smart&auto=webp&s=60e1a5aa17f4b309e65766a98a2265c99c3ff11d', 960, 951, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkgu6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/2rqf77jhxcph1.jpg?width=1080&format=pjpg&auto=webp&s=7fddec52c4b426c0516b2e393ad139460e999044', 'https://preview.redd.it/2rqf77jhxcph1.jpg?width=960&crop=smart&auto=webp&s=0a5de19a6ad7684f80bca1d57030f174cefa0243', 960, 960, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkl89'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/a3q75ejhxcph1.jpg?width=1200&format=pjpg&auto=webp&s=617f1bceb257d3a9dc8e53e184b1097d158f8f76', 'https://preview.redd.it/a3q75ejhxcph1.jpg?width=960&crop=smart&auto=webp&s=6aaf724dfd4abaf2ec1e1b7565e7f309fb77240d', 960, 640, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkl89'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ka2pgejhxcph1.jpg?width=736&format=pjpg&auto=webp&s=fffd874abb41f0429f83b2e268194d53fb2a187e', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkl89'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/v52pydjhxcph1.jpg?width=1200&format=pjpg&auto=webp&s=163f0549fd61f52d95c96eeb11c0cdfa59c7bae1', 'https://preview.redd.it/v52pydjhxcph1.jpg?width=960&crop=smart&auto=webp&s=b48efe9ce35e724015d947933b57d27e91eca008', 960, 1706, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkl89'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/zf03ffjhxcph1.jpg?width=620&format=pjpg&auto=webp&s=52b02c77998e6bc776d8bd04b9efbd29133ffe80', NULL, NULL, NULL, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkl89'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/643ykfjhxcph1.jpg?width=1200&format=pjpg&auto=webp&s=90990ab1f069a6111e1c9335dfbf58caf063deef', 'https://preview.redd.it/643ykfjhxcph1.jpg?width=960&crop=smart&auto=webp&s=f2aeb0fc61540c98a426032040c888385482b4b9', 960, 540, 5, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkl89'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/sugtcejhxcph1.jpg?width=510&format=pjpg&auto=webp&s=8f628cc476d1914293a41485632c2f75ad7eebf8', NULL, NULL, NULL, 6, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkl89'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/bhcif7jhxcph1.jpg?width=852&format=pjpg&auto=webp&s=4a2146fc1c4dfe958ac7090a4a69e1f02372bf67', NULL, NULL, NULL, 7, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkl89'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0vxvoejhxcph1.jpg?width=1200&format=pjpg&auto=webp&s=3d24be8924a2c5ec940a09bb0783f98a544fe024', 'https://preview.redd.it/0vxvoejhxcph1.jpg?width=960&crop=smart&auto=webp&s=1a86add6c9a3e3952384d4c9cefed9d2805b935d', 960, 1440, 8, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkl89'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i9hepngbycph1.jpeg', 'https://preview.redd.it/i9hepngbycph1.jpeg?width=960&crop=smart&auto=webp&s=6f50bc558950aee62684602f7f73c5c30f19ea70', 960, 960, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkp09'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/go9cmcayddph1.jpeg', 'https://preview.redd.it/go9cmcayddph1.jpeg?width=960&crop=smart&auto=webp&s=94420fce1684bf0756cab0e5e0e53c0717e43511', 960, 641, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfmude'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/g67w6lf3tdph1.jpeg', 'https://preview.redd.it/g67w6lf3tdph1.jpeg?width=960&crop=smart&auto=webp&s=e6bf783b6444e6f89ce740a02a4beaee591f7621', 960, 412, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfoni3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4x8oytch6eph1.jpeg', 'https://preview.redd.it/4x8oytch6eph1.jpeg?width=960&crop=smart&auto=webp&s=d20aea74ae044c043d3d346d3fe3a516a03a93d1', 960, 443, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfq7vl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/da81hd3vdeph1.jpg?width=1920&format=pjpg&auto=webp&s=4361b27651190e530d0c340cff424d87387352fa', 'https://preview.redd.it/da81hd3vdeph1.jpg?width=960&crop=smart&auto=webp&s=90f07e2db805c8073e1cbfdae7fd48b9b7ec5618', 960, 540, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfr3xp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/st7wda3vdeph1.jpg?width=1280&format=pjpg&auto=webp&s=465aeb552e495b9635ad156090bed6a0f6a09a53', 'https://preview.redd.it/st7wda3vdeph1.jpg?width=960&crop=smart&auto=webp&s=a23d07056e6ab768fc0b28d28bc18a9f6d2423c0', 960, 540, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfr3xp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/e8i8t93vdeph1.jpg?width=560&format=pjpg&auto=webp&s=761858ae36e30cd51525dbaf705b7e55b3a225ee', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfr3xp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/zd58xjhjmeph1.jpg?width=1920&format=pjpg&auto=webp&s=14856d339561044b0d7212c00f3019a4ae3bda27', 'https://preview.redd.it/zd58xjhjmeph1.jpg?width=960&crop=smart&auto=webp&s=c8854fe1f3e96f76fcc1668a773792028be5c757', 960, 540, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfs3d9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/vfmw6khjmeph1.jpg?width=1920&format=pjpg&auto=webp&s=63041d87733dc2f319070e8fa7e28c988ab30a9a', 'https://preview.redd.it/vfmw6khjmeph1.jpg?width=960&crop=smart&auto=webp&s=608961b943c3a4298801ee3085294ae8a36fdab3', 960, 540, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfs3d9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/d7lptjhjmeph1.jpg?width=1920&format=pjpg&auto=webp&s=843b85083d894e4874ed103278edb114aed5777f', 'https://preview.redd.it/d7lptjhjmeph1.jpg?width=960&crop=smart&auto=webp&s=91dd4b0358cbc9aad9760be8000d944b1824ebb2', 960, 540, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfs3d9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/zsmk1zid2fph1.jpg?width=735&format=pjpg&auto=webp&s=08fde249b77d081d80a01db3d425809df039e3ca', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wftuut'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/4k80myid2fph1.jpg?width=500&format=pjpg&auto=webp&s=140cacc3f4b176f00a5bd7b57e60b03ef285b32e', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wftuut'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/xhvmjn5zmfph1.jpg?width=564&format=pjpg&auto=webp&s=0d29fd6d32e306c853caba8fc26112307d9a3b83', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfvyfd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/l3c0sq5zmfph1.jpg?width=736&format=pjpg&auto=webp&s=9b9f344c66e3f2e57af529cc75c72abbc4f1b48a', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfvyfd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/76asml5zmfph1.jpg?width=1200&format=pjpg&auto=webp&s=2f149af700ef87aa5933b31a9d2a2547c602a05d', 'https://preview.redd.it/76asml5zmfph1.jpg?width=960&crop=smart&auto=webp&s=f000cfd89afada8b4ce2cbbeca80c8cff69d6d5f', 960, 1705, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfvyfd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/cz1dxl5zmfph1.jpg?width=1200&format=pjpg&auto=webp&s=d0779f87e082b2fe5fe0d46b3de1e0d03ef33cc6', 'https://preview.redd.it/cz1dxl5zmfph1.jpg?width=960&crop=smart&auto=webp&s=aca8097e12326baf7faeca8eca4eeab974bbeedd', 960, 1344, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfvyfd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/snp44l5zmfph1.jpg?width=564&format=pjpg&auto=webp&s=0ef7d713497239c944d15fc66eee2c203dc89927', NULL, NULL, NULL, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfvyfd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/v2oeyh4dtfph1.jpg?width=1200&format=pjpg&auto=webp&s=5a438c98bfd7a54b5cfcda3550b1b1c3c39a3303', 'https://preview.redd.it/v2oeyh4dtfph1.jpg?width=960&crop=smart&auto=webp&s=1c1461854af91b565131f033328b9b20781376e8', 960, 540, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfwkf0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/xke5espdtfph1.jpg?width=640&format=pjpg&auto=webp&s=b45d982420a359df25d225d5f8467e95602186d7', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfwkf0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/676ct6cetfph1.jpg?width=1902&format=pjpg&auto=webp&s=4296f40467a66f346cc5297efa189057dd926968', 'https://preview.redd.it/676ct6cetfph1.jpg?width=960&crop=smart&auto=webp&s=6b880791a89c900081b8d86df6929c6bcd92043b', 960, 446, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfwkf0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3rz8311mzfph1.png', 'https://preview.redd.it/3rz8311mzfph1.png?width=960&crop=smart&auto=webp&s=13a25bc4c922c309d4532b016be6174db5a25ba0', 960, 960, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfx5wn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/c1jxfj8j8gph1.jpeg', 'https://preview.redd.it/c1jxfj8j8gph1.jpeg?width=960&crop=smart&auto=webp&s=eec3299d1acc7dfd50c550c86b9a8a857647c8c3', 960, 1192, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfxyzx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4bhuqpdjdgph1.jpeg', 'https://preview.redd.it/4bhuqpdjdgph1.jpeg?width=960&crop=smart&auto=webp&s=75476f940eb1fc7b6fca7500a032e962daf24eb1', 960, 1422, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfyekz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/ZDFlN2x4emQyZnBoMWKZPECD2KRm6PMTBowzsmCCYXWm4-u4bFLkxg5jkZGi.png?auto=webp&s=f1c4c1c6ab6c94a513691130349407d26013849a', 'https://external-preview.redd.it/ZDFlN2x4emQyZnBoMWKZPECD2KRm6PMTBowzsmCCYXWm4-u4bFLkxg5jkZGi.png?width=960&crop=smart&auto=webp&s=b4d4eafd30c391d74476fb7450d966236c9b1bf1', 960, 412, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfz57n'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ezmys27apgph1.jpg?width=599&format=pjpg&auto=webp&s=b67908bf1897f8ae1bc34c841f8200ade816b592', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfzipw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/tqkcs27apgph1.jpg?width=349&format=pjpg&auto=webp&s=f1db884d5f532058e201fc92d914ee0c21f5d47d', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfzipw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/hobnf37apgph1.jpg?width=750&format=pjpg&auto=webp&s=c8dd08879a65858e12ea316aca01441cc9836a70', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfzipw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ej0qe27apgph1.jpg?width=768&format=pjpg&auto=webp&s=93eff0a3c7ffbd630a01a9ee104fa13aba0dbd60', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfzipw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/846j797apgph1.jpg?width=3072&format=pjpg&auto=webp&s=3accb4d5f24398698bf33da6de4c59e25e77cd01', 'https://preview.redd.it/846j797apgph1.jpg?width=960&crop=smart&auto=webp&s=fd34b1809cd54dff29da57240c41064ecf0a24ff', 960, 720, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfzipw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/f73zvrjfzgph1.jpg?width=736&format=pjpg&auto=webp&s=636495f0a899d89c7254b4ea5780206dc11bbbeb', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0l2u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/6nl2m1ofzgph1.jpg?width=682&format=pjpg&auto=webp&s=27a3e43b5a64f4108197a92f9a9523cbf1220faf', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0l2u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/crmmnpqfzgph1.jpg?width=736&format=pjpg&auto=webp&s=b161be53cf25ae227824ec2ddc6396b8f3f4aec7', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0l2u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/3tjomvtfzgph1.jpg?width=398&format=pjpg&auto=webp&s=dab57d90876a39d147f61f4353b7a551890a18a7', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0l2u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/9uegaxvfzgph1.jpg?width=735&format=pjpg&auto=webp&s=0781141314d2139af874b398fde53b4f460a2cfa', NULL, NULL, NULL, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0l2u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/q20nimzfzgph1.jpg?width=357&format=pjpg&auto=webp&s=f29129a7586086e401006b905bfa64cc983b1644', NULL, NULL, NULL, 5, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0l2u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/fi2car1gzgph1.jpg?width=497&format=pjpg&auto=webp&s=cd37655e5fbc52da77040ccf0b37205448f582bc', NULL, NULL, NULL, 6, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0l2u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/yskep74gzgph1.jpg?width=400&format=pjpg&auto=webp&s=1c2dd319a0f26e2e74fb4fbc34304e2d52ee53bb', NULL, NULL, NULL, 7, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0l2u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/p0n5ue6gzgph1.jpg?width=736&format=pjpg&auto=webp&s=3566a6747dbcfa6c87c8153f923b2617cb318f5a', NULL, NULL, NULL, 8, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0l2u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/89tjbg8gzgph1.jpg?width=640&format=pjpg&auto=webp&s=188885d2ff6c7d1ef0054c579a1c5786e10fe4c5', NULL, NULL, NULL, 9, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0l2u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/64tyqrbozgph1.jpeg', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0mvw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/nwyp69n6ahph1.jpg?width=1916&format=pjpg&auto=webp&s=a35a46fa51db1200cf2229d3f6bcad5be523536b', 'https://preview.redd.it/nwyp69n6ahph1.jpg?width=960&crop=smart&auto=webp&s=477609dc5f6cddea1fa802def731b2cf2748d775', 960, 541, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg1tw0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/9hzi8jq6ahph1.jpg?width=3840&format=pjpg&auto=webp&s=a0e62d6baa01f11d1f84bc5646dd01f27dbf0669', 'https://preview.redd.it/9hzi8jq6ahph1.jpg?width=960&crop=smart&auto=webp&s=b6f1e0f747b4a69f0f1b4f7f28e7f1d8c5bde0d3', 960, 540, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg1tw0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/69x3rht6ahph1.jpg?width=1000&format=pjpg&auto=webp&s=28b49edf8f1fdee6e0d208e4513ead2c6960b2fd', 'https://preview.redd.it/69x3rht6ahph1.jpg?width=960&crop=smart&auto=webp&s=cdb4a84723956b21c3a1736a294003c9aac62227', 960, 1440, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg1tw0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/4vluo1w6ahph1.jpg?width=550&format=pjpg&auto=webp&s=de88e7991544c2ff2c67688c80faac1ba7c008a0', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg1tw0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/em5qaTZ3Y2JmaHBoMYJqBFZU2ZNaM_1Jc7y_7-9JW0kYsLBzNQEENkNYzWO3.png?auto=webp&s=b00045461b487a7e57cda373008a893354a91de5', 'https://external-preview.redd.it/em5qaTZ3Y2JmaHBoMYJqBFZU2ZNaM_1Jc7y_7-9JW0kYsLBzNQEENkNYzWO3.png?width=960&crop=smart&auto=webp&s=c990bbd3dcb43c00036dfae2211c4d7e466bd10b', 960, 693, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg2mmm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/wrfc7x2ojhph1.jpg?width=787&format=pjpg&auto=webp&s=7e7dffdf1c7cd3b7548a8f034a926aca5cf1f064', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg320i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/bhs2qw2ojhph1.jpg?width=894&format=pjpg&auto=webp&s=b308104d6deb642d7b1b74f7f911780130ce2942', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg320i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/wq8238z5kgph1.jpg?width=1367&format=pjpg&auto=webp&s=bdda69785cb3d7d253baf1011005ed06f7f49c92', 'https://preview.redd.it/wq8238z5kgph1.jpg?width=960&crop=smart&auto=webp&s=73ee93bc9b926b76e908be6639fa388fa72ec712', 960, 1438, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg34br'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/c4w280z5kgph1.jpg?width=1361&format=pjpg&auto=webp&s=1fe17c61b6c95b38cc24ada67a96b9d00fd29d16', 'https://preview.redd.it/c4w280z5kgph1.jpg?width=960&crop=smart&auto=webp&s=e91bb326dcfcd1ea85326769a321421c03cf3a33', 960, 1439, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg34br'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ennrm1xfxhph1.png?width=736&format=png&auto=webp&s=a72abdc9c93c4c8e062c5cbf7ef3f67402823b7d', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg51eb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/whqo74h8whph1.png?width=736&format=png&auto=webp&s=e913b479fdb5df9c08397aaed33b4bab5ea68f3a', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg51eb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/bimqo97iwhph1.png?width=736&format=png&auto=webp&s=246bf626775fd9ff95d191fc659106ffaaaf1c0a', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg51eb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/s2j5df16xhph1.png?width=736&format=png&auto=webp&s=108bafdc0c6cd40a0cce2d08d0378c128f983005', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg51eb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/2ijqzsfnwhph1.png?width=736&format=png&auto=webp&s=c40904efb486a2fc91fe78f9f7c3018351af4d32', NULL, NULL, NULL, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg51eb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/fgk6dy71xhph1.png?width=735&format=png&auto=webp&s=83130bbb5b89455390051e0783d4a1b305b6f544', NULL, NULL, NULL, 5, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg51eb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/esj0p43j7iph1.gif', 'https://preview.redd.it/esj0p43j7iph1.gif?width=960&crop=smart&format=png8&s=675ccfe7765d77a726550bceda2273636bd3e664', 960, 537, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6jb4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/sska4p6h9iph1.jpg?width=700&format=pjpg&auto=webp&s=7f236b91caa78e5b3dfa6b18b13389fcc78a66ff', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6tko'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/e8f33o6h9iph1.jpg?width=852&format=pjpg&auto=webp&s=e2f6f83893c106658451bd154e68da105e45ab84', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6tko'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/uyg08p6h9iph1.png?width=631&format=png&auto=webp&s=ce4b1dc5466fd99eeddf9b36e9b5742694503d49', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6tko'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/fq24go6h9iph1.png?width=1279&format=png&auto=webp&s=060af8d68368012388a6456c4c54d01ae48bf3a9', 'https://preview.redd.it/fq24go6h9iph1.png?width=960&crop=smart&auto=webp&s=d1ef9250d0585f137c71170b10665d601f44bd08', 960, 514, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6tko'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/pk3pzzpt9iph1.png?width=632&format=png&auto=webp&s=962f66d8090133b745acc5aad5ef78e2a32051f2', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6vi9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/fthi50qt9iph1.jpg?width=220&format=pjpg&auto=webp&s=5b37055b160f5ee7cca0b636f97aca745d387374', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6vi9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/7aehizpt9iph1.png?width=387&format=png&auto=webp&s=5f1c7311642f677d489a553bef60a9453f4db513', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6vi9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/tezvd0qt9iph1.png?width=250&format=png&auto=webp&s=8c2dcaa1599b69f7c37266769802e8efb1407b2c', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6vi9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uxywmjcfaiph1.jpeg', 'https://preview.redd.it/uxywmjcfaiph1.jpeg?width=960&crop=smart&auto=webp&s=0968bd0ab1d6ceb34a120b090d6fde9ce62b277e', 960, 1427, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6yu3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/vGBVByxF6sJ-e8Mn7iF0lMA4hJKWRq3FUE9Z01I2UjY.jpeg?auto=webp&s=2b6d9df0221842901ade7403bad7131cd46480ec', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg8wkv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/qb02n8f6uiph1.jpg?width=736&format=pjpg&auto=webp&s=aa9f84c62e982cf9c990e90b02179cda4f8f483a', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wga324'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/hgdhlcl6uiph1.jpg?width=736&format=pjpg&auto=webp&s=b4fcfe389736ee343b81e0d467f5797d3a194f5a', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wga324'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/zj0eskq6uiph1.jpg?width=735&format=pjpg&auto=webp&s=a283a3dca54e31360868d7cad1578777d5a96752', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wga324'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/kgsqmqv6uiph1.jpg?width=736&format=pjpg&auto=webp&s=1f3d686f5fdec70b0d1dd562ca5d6b7c0dbe6ee9', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wga324'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/e1utae07uiph1.jpg?width=450&format=pjpg&auto=webp&s=dd622924f1b1b3052ddb337603163d3649878e3a', NULL, NULL, NULL, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wga324'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/essof237uiph1.jpg?width=736&format=pjpg&auto=webp&s=27ba5a1d696d87ea93eb8ca83ef054643eac82d1', NULL, NULL, NULL, 5, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wga324'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/jvpxr367uiph1.jpg?width=735&format=pjpg&auto=webp&s=50bae2425b94091daf2ad60c9ba8da19eb868646', NULL, NULL, NULL, 6, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wga324'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/9wc4qi87uiph1.jpg?width=736&format=pjpg&auto=webp&s=61164be96402acccac64eaa7bee48d1a011ea053', NULL, NULL, NULL, 7, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wga324'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/bsufm4p4ajph1.jpg?width=636&format=pjpg&auto=webp&s=dda55c36e7ad891ec5d984af91effbfec765feb2', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/t54or3p4ajph1.jpg?width=474&format=pjpg&auto=webp&s=661d08493af349dc2748be3307507b70e8c7b933', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ohl3n3p4ajph1.jpg?width=1350&format=pjpg&auto=webp&s=1ebb97caf89a070c02396607ccd50c94b537b2cd', 'https://preview.redd.it/ohl3n3p4ajph1.jpg?width=960&crop=smart&auto=webp&s=ae2a865a040331bee344a51c42193d9e96462ae1', 960, 606, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/hs386kp4ajph1.jpg?width=1427&format=pjpg&auto=webp&s=5a5c134a4f896b4acc72bb9b5bee22110d22baa1', 'https://preview.redd.it/hs386kp4ajph1.jpg?width=960&crop=smart&auto=webp&s=a57d01ca878ed0987f3516dee7d35b9654e6cbeb', 960, 655, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/8fcty2p4ajph1.jpg?width=839&format=pjpg&auto=webp&s=9d43fe99329e59e7fb5ec84bfa656b9b40603fa7', NULL, NULL, NULL, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/47ym54p4ajph1.jpg?width=1920&format=pjpg&auto=webp&s=9d666183f3937749b01b8d2682149bbe6a505018', 'https://preview.redd.it/47ym54p4ajph1.jpg?width=960&crop=smart&auto=webp&s=acaf60818e66f72524be538f609a6f40e4578879', 960, 540, 5, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ir5eobq4ajph1.jpg?width=1016&format=pjpg&auto=webp&s=c8739394f04aeef9e314da5c55ff17e5b8e3a6f3', 'https://preview.redd.it/ir5eobq4ajph1.jpg?width=960&crop=smart&auto=webp&s=926b0fb4bb9f0df5ccb4e8cd685eff50ffbc227c', 960, 1360, 6, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/r437ddp4ajph1.jpg?width=1200&format=pjpg&auto=webp&s=5aa57f1581f84c79599d94317f802eae36472800', 'https://preview.redd.it/r437ddp4ajph1.jpg?width=960&crop=smart&auto=webp&s=404e171bc93536c7552408842fc7cfefa2f1a1a5', 960, 733, 7, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/m22b0kp4ajph1.jpg?width=1600&format=pjpg&auto=webp&s=3986c6db816cd4b89bb2c04ef4f25e7a5b7a92c5', 'https://preview.redd.it/m22b0kp4ajph1.jpg?width=960&crop=smart&auto=webp&s=0a8158019bb1b5c80d6c515ed5f0c722958ba4e3', 960, 643, 8, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/6ov234p4ajph1.jpg?width=474&format=pjpg&auto=webp&s=4aabbd7118816f786e543c82fef8174dc9361325', NULL, NULL, NULL, 9, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/dzj0hkp4ajph1.jpg?width=1716&format=pjpg&auto=webp&s=dd34a24afbd47d7e99c08bf6e8b571e3c7d0525a', 'https://preview.redd.it/dzj0hkp4ajph1.jpg?width=960&crop=smart&auto=webp&s=95e6948e874de2da623d812c1c3253fa15debfde', 960, 383, 10, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/nm0rcfp4ajph1.jpg?width=640&format=pjpg&auto=webp&s=13205fdc59061386e8a3a07a0f17545b6388cad8', NULL, NULL, NULL, 11, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/peepbkp4ajph1.jpg?width=788&format=pjpg&auto=webp&s=d0906b3778fb3f7613fa969a47352409c697d53d', NULL, NULL, NULL, 12, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/9ze2sjp4ajph1.jpg?width=474&format=pjpg&auto=webp&s=c3326e0d7da1f0a67ab7915bc6190705eb4d025d', NULL, NULL, NULL, 13, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/mg35c7q4ajph1.jpg?width=1737&format=pjpg&auto=webp&s=6d60937c9135088b8d61092a3806a91297254643', 'https://preview.redd.it/mg35c7q4ajph1.jpg?width=960&crop=smart&auto=webp&s=d2720a9e7e24b8e7c68b6c8905ac959e48b70954', 960, 735, 14, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/NW5xbTg1N3JmaHBoMUxzSrfoht0_2rH1tgjBEOjO-Ic73VHBNjxw7BB1gXuP.jpeg?auto=webp&s=f710729255e95c37f56eb08de149817ad5dea4fa', 'https://external-preview.redd.it/NW5xbTg1N3JmaHBoMUxzSrfoht0_2rH1tgjBEOjO-Ic73VHBNjxw7BB1gXuP.jpeg?width=960&crop=smart&auto=webp&s=f8ff0a211d7ca8072a1087cd64a9ff4495d11fce', 960, 540, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wge30n'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/nwb25piojjph1.jpg?width=2124&format=pjpg&auto=webp&s=4aac60a23c1bf1cb2ec5da9c47e1aa5da0fe510c', 'https://preview.redd.it/nwb25piojjph1.jpg?width=960&crop=smart&auto=webp&s=dd02ed9712d0d41de1abac1a686dd53fb2a7a0a5', 960, 637, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wge6zb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/7zq8y2nojjph1.jpg?width=500&format=pjpg&auto=webp&s=a82fe4863dbf6db2503718e006e776d26dd1881b', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wge6zb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/240hqupojjph1.jpg?width=600&format=pjpg&auto=webp&s=35d22991ba38d9b52d582bed83cd4bab0bd8d599', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wge6zb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/bn705zrojjph1.jpg?width=736&format=pjpg&auto=webp&s=34b1db10ea3f184947584022af475949d7e1211b', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wge6zb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/og96ydbeljph1.jpg?width=720&format=pjpg&auto=webp&s=3aea296d27316d94c5a6e659bf9521b6ef890f69', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgegt6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/fcwyqfeeljph1.jpg?width=735&format=pjpg&auto=webp&s=45b7df73436bd5a105e946298d93afb66072d6df', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgegt6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/uhs1h1heljph1.jpg?width=736&format=pjpg&auto=webp&s=9541c132812668d4ed8e4eec80f2af7c4179ef6e', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgegt6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ck09g74hpjph1.jpg?width=640&format=pjpg&auto=webp&s=7e814d494703286e6a0add2b52920832994e84f1', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/xtv5g74hpjph1.jpg?width=320&format=pjpg&auto=webp&s=1559c02c0ad7fa6779a1768c938372bb81fd49dd', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/839z284hpjph1.jpg?width=900&format=pjpg&auto=webp&s=d3397e026e0208c28540ffa94a916df2491d44b5', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/wux1c74hpjph1.jpg?width=1080&format=pjpg&auto=webp&s=3d8363795a91e53dab027379c95a4871d1147c71', 'https://preview.redd.it/wux1c74hpjph1.jpg?width=960&crop=smart&auto=webp&s=0e1010da6a6a3f9b913d1f808b0a5929ace1b291', 960, 1200, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/cokwz64hpjph1.jpg?width=640&format=pjpg&auto=webp&s=64fd54f73080ca1e9ceaf5d309244234089c4605', NULL, NULL, NULL, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/3y5xc74hpjph1.jpg?width=960&format=pjpg&auto=webp&s=d998610f130a48853df62a9bb13557a04aaef06c', 'https://preview.redd.it/3y5xc74hpjph1.jpg?width=960&crop=smart&auto=webp&s=161946e43ab32c702572acac064bafb4dc0c19b9', 960, 950, 5, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/kk80684hpjph1.jpg?width=735&format=pjpg&auto=webp&s=946e1affa67d1b3e5cc5383de3d14eee6d48aa1f', NULL, NULL, NULL, 6, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/sbqvb74hpjph1.jpg?width=800&format=pjpg&auto=webp&s=3d395e80b90333e6039e5cd8142127b8a86a70a4', NULL, NULL, NULL, 7, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/k8tog74hpjph1.jpg?width=736&format=pjpg&auto=webp&s=3227847ebd4ca9e66a6325201225a0f48af0ef81', NULL, NULL, NULL, 8, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/71lv984hpjph1.jpg?width=960&format=pjpg&auto=webp&s=184b9d47dc452b4a2ec0ff63a162850953ee4b68', 'https://preview.redd.it/71lv984hpjph1.jpg?width=960&crop=smart&auto=webp&s=5ee9b35caeb4e4dcc6dd626e23e9d9e9bab9d7a5', 960, 1200, 9, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ugd8984hpjph1.jpg?width=640&format=pjpg&auto=webp&s=54cdbe9657da713b327ad7fcd1c160c7da7bfab3', NULL, NULL, NULL, 10, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/gmib584hpjph1.jpg?width=640&format=pjpg&auto=webp&s=f329dd437388f9938c35cd9effab08366638c602', NULL, NULL, NULL, 11, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/gl62184hpjph1.jpg?width=961&format=pjpg&auto=webp&s=3c4db2c4fccb0237bf85ffe6304b252d6a979ef3', 'https://preview.redd.it/gl62184hpjph1.jpg?width=960&crop=smart&auto=webp&s=e38b6fe25acf25ead28d8ba508127f4386a7f64b', 960, 1198, 12, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/1l3w184hpjph1.jpg?width=928&format=pjpg&auto=webp&s=a6a044938be913284e25060f030aa4f920001e48', NULL, NULL, NULL, 13, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/7tupa84hpjph1.jpg?width=735&format=pjpg&auto=webp&s=a4d294944a330b4cdfa3b0f2db5f2bb8f71e59b1', NULL, NULL, NULL, 14, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/hfm2lqkvpjph1.jpg?width=735&format=pjpg&auto=webp&s=8157a5d8b282a3ea9f0c286aba3f8d2d1887d075', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf61x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/8ij9hrkvpjph1.jpg?width=1179&format=pjpg&auto=webp&s=4a5c48d3bf803eff9eaa35afb8177636a4265622', 'https://preview.redd.it/8ij9hrkvpjph1.jpg?width=960&crop=smart&auto=webp&s=e2de46ed57dd668dd02ce0d9d2b71fdd6ecb59e1', 960, 1175, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf61x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ni8pbrkvpjph1.jpg?width=1125&format=pjpg&auto=webp&s=e26214287893d9a56539264f36273faf187fa0ff', 'https://preview.redd.it/ni8pbrkvpjph1.jpg?width=960&crop=smart&auto=webp&s=d7e8c0d6cd5fb4d88111cc6f36a6aff9d1aed070', 960, 1195, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf61x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/sljntrkvpjph1.jpg?width=736&format=pjpg&auto=webp&s=bd90d9df46d9c64ca36bd775cac67663e4d810a6', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf61x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/senn2qkvpjph1.jpg?width=236&format=pjpg&auto=webp&s=f1e15e8fc0127b6fc3a21aaf8577e3344b488bd8', NULL, NULL, NULL, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf61x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/p1ssrns30kph1.jpg?width=588&format=pjpg&auto=webp&s=b26acb18d1d6a7f4742f7ab08bf42a3d3366c343', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wggp4j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/04wrnls30kph1.jpg?width=588&format=pjpg&auto=webp&s=5ffaf6546cb4922af5c3917e66738902d4a13f02', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wggp4j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6hgnum0dbkph1.png', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgibic'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/a6h1c13zpkph1.jpg?width=1096&format=pjpg&auto=webp&s=93e8c493d57c77761cd4e1e9b432607efed155ba', 'https://preview.redd.it/a6h1c13zpkph1.jpg?width=960&crop=smart&auto=webp&s=ab3b27fba6aed0dc3615453bd33d3c2d3b687825', 960, 945, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgkbs7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/rx6ob23zpkph1.jpg?width=736&format=pjpg&auto=webp&s=c6a70407f97d893af59db7af8e7852ce8857b1fc', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgkbs7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/yj03w13zpkph1.jpg?width=1080&format=pjpg&auto=webp&s=16fd510cc1605056ce977b80c473d8020a28db9b', 'https://preview.redd.it/yj03w13zpkph1.jpg?width=960&crop=smart&auto=webp&s=71459db28b7e595d75e82e88fe7fccd4885aff88', 960, 1706, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgkbs7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/2bqkdtv3qkph1.jpg?width=1080&format=pjpg&auto=webp&s=bcd5814508422b07465d552c97587aefe401704b', 'https://preview.redd.it/2bqkdtv3qkph1.jpg?width=960&crop=smart&auto=webp&s=b50b1e78d006d8cf17be65be86707edeeaac63f0', 960, 1706, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgkbs7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/lc20mtljqkph1.jpg?width=736&format=pjpg&auto=webp&s=5cec03c1946689f2ccb6ff10a70a30be76fbea20', NULL, NULL, NULL, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgkbs7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/7hm3qtljqkph1.jpg?width=500&format=pjpg&auto=webp&s=386d03d6891f3c81a1bcf961b5c88a55a36c44ff', NULL, NULL, NULL, 5, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgkbs7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/muj1rtljqkph1.jpg?width=735&format=pjpg&auto=webp&s=5a238983d3563711bbcc868108cf93dbc5158118', NULL, NULL, NULL, 6, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgkbs7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/h1pslp9qqkph1.jpg?width=736&format=pjpg&auto=webp&s=ea7390a39f07b995b027d546cec771b8480169b5', NULL, NULL, NULL, 7, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgkbs7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/cdQYaXiGFfuPHZUfeBJpLbSpOmxGOP0861F3IpUqwLc.jpeg?auto=webp&s=c4698c12a82667e2ff95d7af9249f85d033c9665', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgl98o'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ls0bf0englph1.jpeg', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgnj4l'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/kl7h973fplph1.png?width=700&format=png&auto=webp&s=35504466520766e679438f8127933b7ca5dd7017', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgom6w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/vqfcvt65plph1.png?width=1200&format=png&auto=webp&s=5d90ab8cbc458d60fbcae50c88b67cb1649f4cec', 'https://preview.redd.it/vqfcvt65plph1.png?width=960&crop=smart&auto=webp&s=1e1618e10a2b5a7b7d7458d77e9d74656f035139', 960, 569, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgom6w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/c4vktymiplph1.png?width=640&format=png&auto=webp&s=9691aa58a5812b98b63bdf928f009dd5d15bb544', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgom6w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/aw2y0am7plph1.png?width=399&format=png&auto=webp&s=00b2ce75b3af494f7ca21fd6ae8704fd48f326c2', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgom6w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/3zljgrsaplph1.png?width=568&format=png&auto=webp&s=9afa84105ea3350e33269803fdb9376079817c46', NULL, NULL, NULL, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgom6w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/2u7nn2b52mph1.jpg?width=644&format=pjpg&auto=webp&s=4cac96d8b19198d033ff35271697e40c673ff4d8', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgq2jn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/dfbgo2b52mph1.jpg?width=733&format=pjpg&auto=webp&s=38f95133044ab3f9bd649e131e0ecf87e9cfaa1b', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgq2jn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/j5utd3b52mph1.jpg?width=909&format=pjpg&auto=webp&s=1b7f6f55a256d1852868deeadccb5760449a2c26', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgq2jn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0adoi3b52mph1.jpg?width=704&format=pjpg&auto=webp&s=672188420f402a01e2bb74f8fe612db4d5493299', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgq2jn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/i3qbu2b52mph1.jpg?width=857&format=pjpg&auto=webp&s=d1d17c663ef120da4db329bb3a5d6ca4294e32c4', NULL, NULL, NULL, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgq2jn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/1qle23b52mph1.jpg?width=744&format=pjpg&auto=webp&s=7a9ec1635fea5cb4208b22c12ea20017a3ccb8da', NULL, NULL, NULL, 5, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgq2jn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/5auo53b52mph1.jpg?width=328&format=pjpg&auto=webp&s=944b9350a31613b5fff823469bfcead57f222c97', NULL, NULL, NULL, 6, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgq2jn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0gcy4rv8dmph1.png', 'https://preview.redd.it/0gcy4rv8dmph1.png?width=960&crop=smart&auto=webp&s=39c88f170f0f210e93eb5db39de5976ed7d930c3', 960, 935, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgrbiv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/i8x2aedv4nph1.jpg?width=1080&format=pjpg&auto=webp&s=5bab4af1471b21e15a216e2e66134ca8b6b361c4', 'https://preview.redd.it/i8x2aedv4nph1.jpg?width=960&crop=smart&auto=webp&s=b49d6d3ebe94b175bd8a4b870fe65f461b514cd5', 960, 652, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgtzr4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/l6zt8cdv4nph1.jpg?width=500&format=pjpg&auto=webp&s=c83ba9e4218f88aa877dfa39f61ce6b39c5cc341', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgtzr4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/srh7jucv4nph1.jpg?width=960&format=pjpg&auto=webp&s=ac36ed9c6e4fca43cec1fedff7c3a0e010361c95', 'https://preview.redd.it/srh7jucv4nph1.jpg?width=960&crop=smart&auto=webp&s=bf42938d320f1a1366385c2e692297bea04e3a34', 960, 960, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgtzr4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/fci67ucv4nph1.jpg?width=735&format=pjpg&auto=webp&s=e8101ae70ec1eeb37299997615966a8df92a82d0', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgtzr4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/f9cr3wcv4nph1.jpg?width=985&format=pjpg&auto=webp&s=beae21509fc7b893d9ea795e16f65bb3a901ba7a', 'https://preview.redd.it/f9cr3wcv4nph1.jpg?width=960&crop=smart&auto=webp&s=81882de2960e0e1c64971c25edfb09ebf88b2c8b', 960, 1169, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgtzr4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/yc8w2rcv4nph1.jpg?width=892&format=pjpg&auto=webp&s=00b91fc57c67955d1862b43156126e31b6b1b4b5', NULL, NULL, NULL, 5, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgtzr4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/mh77lxcv4nph1.jpg?width=800&format=pjpg&auto=webp&s=01d35498f0b53f9c89d85f8c6ceafb28ff79bd30', NULL, NULL, NULL, 6, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgtzr4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0frzfwcv4nph1.jpg?width=573&format=pjpg&auto=webp&s=c1df1f724906fd0048e6f7d1fdf87c62ffd2ce2a', NULL, NULL, NULL, 7, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgtzr4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/rdeh42r35nph1.jpg?width=1170&format=pjpg&auto=webp&s=0ec508499dbdd90f47864bc5104364074a6eaf1e', 'https://preview.redd.it/rdeh42r35nph1.jpg?width=960&crop=smart&auto=webp&s=43906bbb960e6cc2f82e9dedff665ed562f1d7cf', 960, 1180, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgu0ph'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/j71zz1r35nph1.jpg?width=736&format=pjpg&auto=webp&s=82bd2186c8d5db8884d0b920c44bc9463b22df90', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgu0ph'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/lgpeuql3hoph1.jpg?width=1000&format=pjpg&auto=webp&s=4bc4dc81d712280d25a4d954a1a55304f69f97a6', 'https://preview.redd.it/lgpeuql3hoph1.jpg?width=960&crop=smart&auto=webp&s=afde90a774a83dfcbf303a6a5628178a126daaea', 960, 960, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgz1iz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/l8ss7ql3hoph1.jpg?width=678&format=pjpg&auto=webp&s=471ed0b2c8fd69c91a1d7b65c7bcc8941dc5f007', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgz1iz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/8g7x1ql3hoph1.jpg?width=1024&format=pjpg&auto=webp&s=3a65f46221314962dd7439a4dc220ce326d1eee6', 'https://preview.redd.it/8g7x1ql3hoph1.jpg?width=960&crop=smart&auto=webp&s=0fb4c72eeddd8fff866298bab7c47aabfa55c42d', 960, 540, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgz1iz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z42liuktapph1.jpeg', 'https://preview.redd.it/z42liuktapph1.jpeg?width=960&crop=smart&auto=webp&s=20f46afde85210b5efeb1f7e3f9958b344d889bb', 960, 680, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh4rl6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/vhq6o9ijnpph1.jpg?width=1920&format=pjpg&auto=webp&s=a1ad9d587ea9d6f29316e1713be4317e70c656dd', 'https://preview.redd.it/vhq6o9ijnpph1.jpg?width=960&crop=smart&auto=webp&s=0f43c105b4bf52c66ddc850481aef0a3965a05ed', 960, 540, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh5655'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/4z9ohaijnpph1.jpg?width=640&format=pjpg&auto=webp&s=ac4b5cec19b4e8b65535ba0fc30ec48af5d8fffe', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh5655'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/uyfbrfijnpph1.jpg?width=4282&format=pjpg&auto=webp&s=edd78d728aea7d99437a2421db5cc267115dd277', 'https://preview.redd.it/uyfbrfijnpph1.jpg?width=960&crop=smart&auto=webp&s=02bdc02b3a29376d562260bcaa26ea48b0586cfd', 960, 640, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh5655'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/k0qxt9ijnpph1.jpg?width=1280&format=pjpg&auto=webp&s=183818efb4114b852b626cd509640344963fd1c6', 'https://preview.redd.it/k0qxt9ijnpph1.jpg?width=960&crop=smart&auto=webp&s=6bffe28fcf3bc945b477699f112b0b93ad4d10c1', 960, 540, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh5655'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/rprxfcijnpph1.jpg?width=3736&format=pjpg&auto=webp&s=4ca980dd4ef1155d745c0b04f8053e63bfd19d35', 'https://preview.redd.it/rprxfcijnpph1.jpg?width=960&crop=smart&auto=webp&s=94288ca76e7a7acfacc6351c0d50115b22019507', 960, 555, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh5655'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/3uaks9ijnpph1.jpg?width=1080&format=pjpg&auto=webp&s=5a425a31c12131c06c43a6695f7b8a8aef1ac3b4', 'https://preview.redd.it/3uaks9ijnpph1.jpg?width=960&crop=smart&auto=webp&s=d62b9039ccc36d1c51c60b16cdbbfe80fd7cf8ce', 960, 540, 5, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh5655'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/nqmum9ijnpph1.jpg?width=1400&format=pjpg&auto=webp&s=dcfbfc57a48561acc709a7b6807d24b407e0113a', 'https://preview.redd.it/nqmum9ijnpph1.jpg?width=960&crop=smart&auto=webp&s=e51ee977c1348f1e34eb0fa67fc07ac7a973339a', 960, 480, 6, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh5655'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/kfcvs9ijnpph1.jpg?width=1080&format=pjpg&auto=webp&s=a728e9a97627d266d236c7f2878740756a713fd5', 'https://preview.redd.it/kfcvs9ijnpph1.jpg?width=960&crop=smart&auto=webp&s=85349424947f16d13ef5e795d16a006601689c23', 960, 540, 7, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh5655'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hcg6vj7yypph1.jpeg', 'https://preview.redd.it/hcg6vj7yypph1.jpeg?width=960&crop=smart&auto=webp&s=80d7d49d0b350cea2b267b79cac73bf2d5526d66', 960, 973, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh6yl4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/4ds5nxjl5qph1.jpg?width=1284&format=pjpg&auto=webp&s=534de7652c133679095cf2445cbfd7815a1f57aa', 'https://preview.redd.it/4ds5nxjl5qph1.jpg?width=960&crop=smart&auto=webp&s=d99001bca9d09c40e9be2a04dff52776a23d9157', 960, 736, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh80fx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/9k5glxjl5qph1.jpg?width=1284&format=pjpg&auto=webp&s=f709bef330397c3b5ce120fe26082e8a87f51408', 'https://preview.redd.it/9k5glxjl5qph1.jpg?width=960&crop=smart&auto=webp&s=5fccce804c56c9e4a9b3ea1879b6faa7c566235f', 960, 699, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh80fx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/m01beyjl5qph1.jpg?width=1178&format=pjpg&auto=webp&s=40525b1e268b5440c2a0e94b611836fd38889a20', 'https://preview.redd.it/m01beyjl5qph1.jpg?width=960&crop=smart&auto=webp&s=8e7b4eb51ba7f0969f9ca4d72f9acfbe44f1caea', 960, 775, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh80fx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/civq1yjl5qph1.jpg?width=735&format=pjpg&auto=webp&s=96e5741ddc0be2d50c5cc470b6a358394d710ad3', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh80fx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ypubeyjl5qph1.jpg?width=1284&format=pjpg&auto=webp&s=cac746c5938af2f40921af6fa603793aaa38d8c4', 'https://preview.redd.it/ypubeyjl5qph1.jpg?width=960&crop=smart&auto=webp&s=4e279ed17cd3013c6d11eb5700f1fd8c9223a4f2', 960, 714, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh80fx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/lbkwrcll5qph1.jpg?width=1200&format=pjpg&auto=webp&s=8c5a3a585048dc1ecbb86fc16fca46c802d4a15a', 'https://preview.redd.it/lbkwrcll5qph1.jpg?width=960&crop=smart&auto=webp&s=d25eef9b3249002d402e1afad36af1428cb655b0', 960, 925, 5, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh80fx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/xx75tyjl5qph1.jpg?width=1080&format=pjpg&auto=webp&s=913d94ce1fb86334e802074bcfdae823792da46f', 'https://preview.redd.it/xx75tyjl5qph1.jpg?width=960&crop=smart&auto=webp&s=1c342ac9477a0638940759535895fb276e698cc8', 960, 1176, 6, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh80fx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/nvrkxzjl5qph1.jpg?width=1200&format=pjpg&auto=webp&s=e567e9b147f6b9757ea3e3dfb4b91f0e5456d444', 'https://preview.redd.it/nvrkxzjl5qph1.jpg?width=960&crop=smart&auto=webp&s=dcbc6dae78fc5a0b43184ff083e7e6c9a1f303b1', 960, 1712, 7, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh80fx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/2kxvfyjl5qph1.jpg?width=1200&format=pjpg&auto=webp&s=06dbf9ac5978a1057177d547bdc42bee1d4408c0', 'https://preview.redd.it/2kxvfyjl5qph1.jpg?width=960&crop=smart&auto=webp&s=696c5ac668980fcd8de575faf547833e750413fc', 960, 516, 8, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh80fx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/mq60oskl5qph1.jpg?width=1284&format=pjpg&auto=webp&s=2d66bf289e3dea080a921d9a013adaa989932847', 'https://preview.redd.it/mq60oskl5qph1.jpg?width=960&crop=smart&auto=webp&s=e609242d09c58e5c5b2358e2bd4c31f4b07d0b98', 960, 602, 9, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh80fx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/z5hk15277qph1.jpg?width=774&format=pjpg&auto=webp&s=9ef2ffa40294ca3e873ad19a89ef25029e913433', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh89uo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/mprrq3277qph1.jpg?width=720&format=pjpg&auto=webp&s=139f623eb0351d96cf34e05fd346827d8c1271e9', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh89uo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/g6iw94277qph1.jpg?width=666&format=pjpg&auto=webp&s=956895e556931a233f05edd626492d4905c7ca42', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh89uo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/k7zp0cp6fqph1.jpg?width=960&format=pjpg&auto=webp&s=45a44e5eb9e8fbe91273b5dfe066e49c235ff6d1', 'https://preview.redd.it/k7zp0cp6fqph1.jpg?width=960&crop=smart&auto=webp&s=7acb06e395b1cacb6eac2011f32ca15bc515194a', 960, 1200, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9jpn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/zmf1vcp6fqph1.jpg?width=720&format=pjpg&auto=webp&s=1120c8be3c9a62a4e43cd78aa159f92598205f96', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9jpn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/y5p9bep6fqph1.jpg?width=766&format=pjpg&auto=webp&s=b18eb1526a4049377383a68d0ad08d858286d07c', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9jpn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/as-PvF8zXwhR2SNHVL22ibyhFkGtGFR5x5db_rwv-ik.jpeg?auto=webp&s=a101227f4d161237d4a409485dd4e9824fd358c2', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9tze'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/as-PvF8zXwhR2SNHVL22ibyhFkGtGFR5x5db_rwv-ik.jpeg?auto=webp&s=a101227f4d161237d4a409485dd4e9824fd358c2', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whai5s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1ktswm3o9rph1.gif', 'https://preview.redd.it/1ktswm3o9rph1.gif?width=960&crop=smart&format=png8&s=7c6a1c3cd5b5c63b46d9676672d2d6fc0314f2ff', 960, 533, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whe524'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/n1splribfrph1.jpg?width=800&format=pjpg&auto=webp&s=bed0b5fb22d0cfca95a8ba1297fbc832845ee12f', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wheyvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/y7fidribfrph1.jpg?width=675&format=pjpg&auto=webp&s=d0f19f64bc873a678633be5775e5651dc23af384', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wheyvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/skq74sibfrph1.jpg?width=736&format=pjpg&auto=webp&s=f53c4877d5622fa5a35e2e0e54c37b342f34545c', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wheyvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/9or71sibfrph1.jpg?width=736&format=pjpg&auto=webp&s=bc4f0633bd6d188624496fff36f8ad5dfa402781', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wheyvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/u5d7aribfrph1.jpg?width=736&format=pjpg&auto=webp&s=726943b36f03ce87e83cac9239f31be0cc71cec4', NULL, NULL, NULL, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wheyvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/i06i8sibfrph1.jpg?width=736&format=pjpg&auto=webp&s=16f805f472ce599865a178e5e1f8c7f4633c57c6', NULL, NULL, NULL, 5, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wheyvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/q0zi5sibfrph1.jpg?width=736&format=pjpg&auto=webp&s=7c94340b38f2eb09b26317c7c690e6be3eeb4e5e', NULL, NULL, NULL, 6, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wheyvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/4wndbsibfrph1.jpg?width=736&format=pjpg&auto=webp&s=4b2b234b0b6268d13ab757b9f5dd52a21938d6fb', NULL, NULL, NULL, 7, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wheyvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/4a0y4uibfrph1.jpg?width=733&format=pjpg&auto=webp&s=a776044aa6dcf3728d859553e446dcaad64f07d1', NULL, NULL, NULL, 8, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wheyvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2cvbvuo5vrph1.jpeg', 'https://preview.redd.it/2cvbvuo5vrph1.jpeg?width=960&crop=smart&auto=webp&s=2a6a57148d102013994dac5f217c26598fd41a1a', 960, 1280, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whh1tx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/qdifpq39atph1.jpg?width=620&format=pjpg&auto=webp&s=d8255635af6594163af7f17fead94c97770d3162', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whn889'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/e7btku39atph1.jpg?width=3162&format=pjpg&auto=webp&s=5ebc907dbcd1c9a3c2714667f8d494b456ae6743', 'https://preview.redd.it/e7btku39atph1.jpg?width=960&crop=smart&auto=webp&s=3e8cb5aed804c35e59994c697621479a29207802', 960, 653, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whn889'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/aqstzq39atph1.jpg?width=1023&format=pjpg&auto=webp&s=b1780c360c85aa03338bbe7794ed02c48fae7bd3', 'https://preview.redd.it/aqstzq39atph1.jpg?width=960&crop=smart&auto=webp&s=39ffcb4f672885345e00d2b9bac6044a69c31229', 960, 536, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whn889'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/p8u0qq39atph1.jpg?width=619&format=pjpg&auto=webp&s=b326f6235214119edd447b98c3c55ebd6456e775', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whn889'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/saab2df9puph1.jpg?width=480&format=pjpg&auto=webp&s=22e778f0d6dd887fb16846bcb45d599051018edc', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whsawe'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/txbdm2i9puph1.jpg?width=3698&format=pjpg&auto=webp&s=bc9ee0444471aa1ffcd69c3a8c5c41fc54ba31e2', 'https://preview.redd.it/txbdm2i9puph1.jpg?width=960&crop=smart&auto=webp&s=3d34976caf44829156768eaa28317a6b03f3e279', 960, 444, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whsawe'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/nudpx9m9puph1.jpg?width=567&format=pjpg&auto=webp&s=8129e73a823b5d62c8661485037358f551c6f605', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whsawe'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/u8n3hxo9puph1.jpg?width=541&format=pjpg&auto=webp&s=60172cf61f235d27c7eb040cf27c7f297527d938', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whsawe'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/7rvkoshaiwph1.jpg?width=735&format=pjpg&auto=webp&s=05d8c12d8c1fcf4bbfa35b8d0729a2f02df85011', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi0ick'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/iuhu7yoaiwph1.jpg?width=736&format=pjpg&auto=webp&s=dbefee358f7f79a4bf329835aac18ea6f092599b', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi0ick'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ilxm3ttaiwph1.jpg?width=736&format=pjpg&auto=webp&s=2fe956accd89cd6b060039de4f1ff46817152823', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi0ick'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/zei43j90swph1.png?width=1195&format=png&auto=webp&s=f54c7c149b0fcaf30721c0b5a03561e5171ac7b9', 'https://preview.redd.it/zei43j90swph1.png?width=960&crop=smart&auto=webp&s=5c545d4060bca09876796f53a72cd8490307ff13', 960, 647, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi216a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/wr33jje0swph1.jpg?width=1920&format=pjpg&auto=webp&s=07060eca4f1a51ee8f808fc0f5f22ed9f4966185', 'https://preview.redd.it/wr33jje0swph1.jpg?width=960&crop=smart&auto=webp&s=f5f7a9335f91ff6706089608b9cecc38c553537d', 960, 540, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi216a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/jeq0exh0swph1.jpg?width=1920&format=pjpg&auto=webp&s=ecf27bb0f861099fc6f05a4f7fda012dd0c61192', 'https://preview.redd.it/jeq0exh0swph1.jpg?width=960&crop=smart&auto=webp&s=a91cbe8d45d184c5aeed981977ea7b827d8f73f9', 960, 540, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi216a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/37iq3dj0swph1.jpg?width=1613&format=pjpg&auto=webp&s=58547327e5601f95ab804463fb4c2f7240c6f165', 'https://preview.redd.it/37iq3dj0swph1.jpg?width=960&crop=smart&auto=webp&s=c0c0fd0984a0423b5d93a0361a5f763df77c5c9e', 960, 642, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi216a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/6sko19l0swph1.jpg?width=1280&format=pjpg&auto=webp&s=15ed20eef7b7c3d6b521c7994d30b92bac3f420e', 'https://preview.redd.it/6sko19l0swph1.jpg?width=960&crop=smart&auto=webp&s=cdaf761bbef0e13a7ce4af12afb362dd68e3d084', 960, 540, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi216a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/vsbxzrm0swph1.jpg?width=1920&format=pjpg&auto=webp&s=75e7008d722d4eafdc69addab413df6109de7857', 'https://preview.redd.it/vsbxzrm0swph1.jpg?width=960&crop=smart&auto=webp&s=a292b69782a4947467815ef0125e28c576d19924', 960, 540, 5, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi216a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/wdgy0dq0swph1.jpg?width=724&format=pjpg&auto=webp&s=a5f46c74308c6d5549b066e334e92d1402642dfd', NULL, NULL, NULL, 6, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi216a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/voiclrr0swph1.jpg?width=736&format=pjpg&auto=webp&s=beec8c7bb936c5b6569faf70f802e06575961eea', NULL, NULL, NULL, 7, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi216a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/x4u121t0swph1.jpg?width=1366&format=pjpg&auto=webp&s=9e221a87d948d02ee5db787192055d78d649b680', 'https://preview.redd.it/x4u121t0swph1.jpg?width=960&crop=smart&auto=webp&s=9b28ef4199c475f43085ebcfa1eba4427ea99d12', 960, 520, 8, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi216a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/xj85kkuc9xph1.jpg?width=995&format=pjpg&auto=webp&s=22d571d7378db7ef60abef65bd36a41715e7cc7c', 'https://preview.redd.it/xj85kkuc9xph1.jpg?width=960&crop=smart&auto=webp&s=6ecc326d1d71abf0129da19275069362b1f9b66f', 960, 1447, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi4rnh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/1kha6fuc9xph1.jpg?width=1000&format=pjpg&auto=webp&s=b730c529837971ff970d5414bd94e553a8954e89', 'https://preview.redd.it/1kha6fuc9xph1.jpg?width=960&crop=smart&auto=webp&s=d6bdade2c460f72b26d9bdf7b316bda405430abc', 960, 1422, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi4rnh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/sytqdiuc9xph1.jpg?width=259&format=pjpg&auto=webp&s=58add1c1d050f1744a5cbaeab0ca20cb90c65713', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi4rnh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/azNpOXk2c3VueHBoMQ93nqy7CnwAow3jJVs21YPq0RM5M6FO4rtF55kLNAZh.jpeg?format=pjpg&auto=webp&s=8c00cbb8b973a223eb00ba7e6c5e3bc5ee66ebf8', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi73dp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/l67te4lywxph1.jpg?width=750&format=pjpg&auto=webp&s=f10d3504d265ae94608dd92860daac0df0594a64', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi8gv7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/698qs4lywxph1.jpg?width=1199&format=pjpg&auto=webp&s=160d1662b5162f53c7dd049a8dbaedad22bfe118', 'https://preview.redd.it/698qs4lywxph1.jpg?width=960&crop=smart&auto=webp&s=05bdc9b75626c1d375794428b0c8a46070b61bc3', 960, 723, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi8gv7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/nxyce3lywxph1.jpg?width=964&format=pjpg&auto=webp&s=13a3973f446691cbeae3cab8b9c44f8860f1c41c', 'https://preview.redd.it/nxyce3lywxph1.jpg?width=960&crop=smart&auto=webp&s=6e59aefb4bad5ffb4ef02c833fc344bb53541d6e', 960, 1274, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi8gv7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/7o99o4lywxph1.jpg?width=832&format=pjpg&auto=webp&s=fa62db18c53657a61f8a35c77bc6502aea483c10', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi8gv7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/6o1xn3lywxph1.jpg?width=650&format=pjpg&auto=webp&s=e8ac5986a579523fb98287eb10e2bde3f4b0bed0', NULL, NULL, NULL, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi8gv7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/qzl3wm67xxph1.jpg?width=1280&format=pjpg&auto=webp&s=db032df63637e76416731b192d1a145c71edc563', 'https://preview.redd.it/qzl3wm67xxph1.jpg?width=960&crop=smart&auto=webp&s=a0a04da5ddc68bc9aa8112aa99ee988777e83277', 960, 1080, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi8i9b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/lzwtyaa7xxph1.png?width=1280&format=png&auto=webp&s=b7336c7f0b8a0576233bd6ab9e652cd2a10b8f2b', 'https://preview.redd.it/lzwtyaa7xxph1.png?width=960&crop=smart&auto=webp&s=878f4fd71fad3a9c9d75439b24720ff1ca84646d', 960, 538, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi8i9b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/k5qdpye7xxph1.jpg?width=1024&format=pjpg&auto=webp&s=88e33927bc9dad640b20235a445f0c8c9a706a86', 'https://preview.redd.it/k5qdpye7xxph1.jpg?width=960&crop=smart&auto=webp&s=d78e8de7228da5d84bb280bedf1ea7666eef5cef', 960, 515, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi8i9b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/n2rwr10d2yph1.jpg?width=960&format=pjpg&auto=webp&s=d46012771ebeb16774b8e927a678037e401d27d5', 'https://preview.redd.it/n2rwr10d2yph1.jpg?width=960&crop=smart&auto=webp&s=3b41eea483819ff426140fe37b14a746654f2b60', 960, 1280, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi9ahi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/kl7m310d2yph1.jpg?width=467&format=pjpg&auto=webp&s=9ad17e3683c3a5beb41d38488b79f8d3d2f024d8', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi9ahi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/pkup520d2yph1.jpg?width=800&format=pjpg&auto=webp&s=d5683db353c8595ae0d37a151384443265a50660', NULL, NULL, NULL, 2, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi9ahi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/es6np10d2yph1.jpg?width=673&format=pjpg&auto=webp&s=1e903cc479bf32431358edc3ecc90f36077c27dc', NULL, NULL, NULL, 3, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi9ahi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/alc9l20d2yph1.jpg?width=415&format=pjpg&auto=webp&s=3f2d9808cdc9984302a6170af74ce433a2e48836', NULL, NULL, NULL, 4, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi9ahi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0rt7g20d2yph1.jpg?width=800&format=pjpg&auto=webp&s=e7f93d038f2b0022cab2c900c197820b3685bbb2', NULL, NULL, NULL, 5, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi9ahi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hoxrnre26yph1.gif', 'https://preview.redd.it/hoxrnre26yph1.gif?width=960&crop=smart&format=png8&s=abbdabb9147ec9ace4a482161897888bef1683a6', 960, 535, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi9upn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/9l7bbzi2dyph1.jpg?width=575&format=pjpg&auto=webp&s=c5ef9dc6572c92233e1cf93948fad6f0b0c078bb', NULL, NULL, NULL, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wiav37'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/473zqyi2dyph1.jpg?width=250&format=pjpg&auto=webp&s=bfe03fcf12f22b3c566ea17b9653cccc11f38f44', NULL, NULL, NULL, 1, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wiav37'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vl6vbc8gxyph1.png', 'https://preview.redd.it/vl6vbc8gxyph1.png?width=960&crop=smart&auto=webp&s=d7f720698c4199a1921c910d37f6fe4d5c4b78f1', 960, 1200, 0, '2026-09-17 03:31:35', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1widm44'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
