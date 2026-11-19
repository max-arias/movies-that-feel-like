-- 0392_seed_20261119T034646Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-19T03:47:19.234095+00:00
-- Run started: 2026-11-19T03:46:46.447938+00:00
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
SELECT p.id, 'https://i.redd.it/f55tz1uoyd2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzhe4m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1pbi2f0pyd2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzhe4m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/djfugk5pyd2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzhe4m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ryvls5kone2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzl0hn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/71b7a5kone2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzl0hn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8drmr4kone2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzl0hn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bqkc95kone2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzl0hn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/afbusbah0f2i1.jpeg', 'https://preview.redd.it/afbusbah0f2i1.jpeg?width=960&auto=webp&s=bdf1ca727b07b5292198bb15dc28d58e5b27ae31', 960, 751, 0, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzmxtn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w87l2zah0f2i1.jpeg', 'https://preview.redd.it/w87l2zah0f2i1.jpeg?width=960&auto=webp&s=d8dcdf7bf59f68d40cfc361b1e0baf01d3d7f47d', 960, 1301, 1, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzmxtn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dlkz9aah0f2i1.jpeg', 'https://preview.redd.it/dlkz9aah0f2i1.jpeg?width=960&auto=webp&s=b900ebeda05547404e20ad903227b9506a545200', 960, 732, 2, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzmxtn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0rcf3cah0f2i1.jpeg', 'https://preview.redd.it/0rcf3cah0f2i1.jpeg?width=960&auto=webp&s=f890f0af35cd0cfcb4f09cebfb99acea85bca4cc', 960, 1522, 3, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzmxtn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wjvm55wj4f2i1.jpeg', 'https://preview.redd.it/wjvm55wj4f2i1.jpeg?width=960&auto=webp&s=6f63cd26faee89883b40f1fa8e180e18b145060f', 960, 1280, 0, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xznjfm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3r31tlbgdf2i1.jpeg', 'https://preview.redd.it/3r31tlbgdf2i1.jpeg?width=960&auto=webp&s=630c1169254e8839f360546a44604666a0f42b05', 960, 1146, 0, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzou5a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mr07wlbgdf2i1.jpeg', 'https://preview.redd.it/mr07wlbgdf2i1.jpeg?width=960&auto=webp&s=5cb132d5feb11208560d8ca0cdfb16a033db8f37', 960, 1706, 1, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzou5a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2sg5mlbgdf2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzou5a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xdol9cf1ff2i1.jpeg', 'https://cf.preview.redd.it/xdol9cf1ff2i1.jpeg?width=960&auto=webp&s=ce1615e3a2b8f34657084be1af11d2423c2c996b', 960, 1200, 0, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzp29f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rjxv9z5pq5ug1.jpg', 'https://cf.preview.redd.it/rjxv9z5pq5ug1.jpg?width=960&auto=webp&s=604d7e3b96011a8bb3375383ebc1c0f45a6b337d', 960, 544, 0, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzpr88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vx9kry5pq5ug1.jpg', 'https://cf.preview.redd.it/vx9kry5pq5ug1.jpg?width=960&auto=webp&s=62dd51f6ba981cb100fc5db901024596e6242fa7', 960, 725, 1, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzpr88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/htlcxz5pq5ug1.jpg', 'https://cf.preview.redd.it/htlcxz5pq5ug1.jpg?width=960&auto=webp&s=ce20b8b441e0151c9e1af0ba3a422892ef420c11', 960, 1705, 2, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzpr88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/owrhoy5pq5ug1.jpg', 'https://cf.preview.redd.it/owrhoy5pq5ug1.jpg?width=960&auto=webp&s=8a6d8370b113ea73168adbc4eb6af96e0ad80cf0', 960, 580, 3, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzpr88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0fi3ry5pq5ug1.jpg', NULL, NULL, NULL, 4, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzpr88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/a04kyy5pq5ug1.jpg', NULL, NULL, NULL, 5, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzpr88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9m9oaz5pq5ug1.jpg', 'https://cf.preview.redd.it/9m9oaz5pq5ug1.jpg?width=960&auto=webp&s=ab539b5ad39670b42178bd570db2c4aea47c5b2e', 960, 960, 6, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzpr88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yypmgz5pq5ug1.jpg', 'https://cf.preview.redd.it/yypmgz5pq5ug1.jpg?width=960&auto=webp&s=c9044774c0268a4e301f557b78360995ea2114b8', 960, 724, 7, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzpr88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/216ekz5pq5ug1.jpg', NULL, NULL, NULL, 8, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzpr88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/q30z306pq5ug1.jpg', 'https://cf.preview.redd.it/q30z306pq5ug1.jpg?width=960&auto=webp&s=9b5ca631f3603a7095bebe2cd37a748ff021b80a', 960, 642, 9, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzpr88'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lm67zwaaqf2i1.jpeg', 'https://preview.redd.it/lm67zwaaqf2i1.jpeg?width=960&auto=webp&s=c4b277e97efef2db80e0c3e2eee1de6ef6b399ef', 960, 473, 0, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzqofy'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uvb1ql08sf2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzqxwh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/c89zin08sf2i1.jpeg', 'https://preview.redd.it/c89zin08sf2i1.jpeg?width=960&auto=webp&s=7207130ebcc5ca159b8ace0dd446023cace9cd54', 960, 540, 1, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzqxwh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l7slrn08sf2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzqxwh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s3lg3ghiuf2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzr9iz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8dssh0liuf2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzr9iz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/bjB6YzNkcXozZzJpMbiaZhck5qunU8K1zWDWt6NAokTh8J4zBCIIK_pc9su_.png?format=pjpg&auto=webp&s=59d7cdca78866b5c60dc38edcbb5450fe1c19b61', NULL, NULL, NULL, 0, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsjn1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5rfnzwtdeg2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztvrt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9v59extdeg2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztvrt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/12hu7ytdeg2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztvrt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ah5a4ytdeg2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztvrt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b4dymytdeg2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztvrt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cxxweytdeg2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztvrt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/iqildytdeg2i1.jpeg', NULL, NULL, NULL, 6, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztvrt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/46jeoytdeg2i1.jpeg', NULL, NULL, NULL, 7, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztvrt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jxdraytdeg2i1.jpeg', NULL, NULL, NULL, 8, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztvrt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/514koxtdeg2i1.jpeg', NULL, NULL, NULL, 9, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztvrt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yitzextdeg2i1.jpeg', NULL, NULL, NULL, 10, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztvrt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b2jicytdeg2i1.jpeg', NULL, NULL, NULL, 11, '2026-11-19 03:47:19', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztvrt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
