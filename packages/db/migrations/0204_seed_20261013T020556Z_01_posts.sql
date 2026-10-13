-- 0204_seed_20261013T020556Z_01_posts.sql: data seed from pipeline:load run.
-- Generated:  2026-10-13T02:06:20.376139+00:00
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
-- Chunk: 01_posts (1/5)
-- Tables: imported_vibe_posts.
-- Pipeline-state tables (processing_runs, pipeline_artifacts)
-- are intentionally excluded — they're per-run bookkeeping.

INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1x4fm3q', 'Yet Another "Whatever type of vibe this is" movie', 'Yet Another "Whatever type of vibe this is" movie', '', 'Original_Recover_452', 1791843260, '/r/MoviesThatFeelLike/comments/1x4fm3q/yet_another_whatever_type_of_vibe_this_is_movie/', 'https://www.reddit.com/gallery/1x4fm3q', 'MoviesThatFeelLike', 'Ominous, eerie rural American gothic atmosphere.', 'publishable', NULL, NULL, '2026-10-13 02:06:20', '2026-10-13 02:06:20')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1x4g3o3', 'Movies that are like this', 'Movies that are like this', '', 'Idek163', 1791844554, '/r/MoviesThatFeelLike/comments/1x4g3o3/movies_that_are_like_this/', 'https://i.redd.it/8mmy84it54vh1.jpeg', 'MoviesThatFeelLike', 'Classical dramatic grandeur and theatrical intensity.', 'publishable', NULL, NULL, '2026-10-13 02:06:20', '2026-10-13 02:06:20')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1x4h4ut', 'Films with beautiful expressionistic stuff like this', 'Films with beautiful expressionistic stuff like this', 'I follow and love the work of choreographer Damien Jalet and I think I stumbled upon my new favorite clip. In love with this.

', 'GabeDatDude', 1791847378, '/r/MoviesThatFeelLike/comments/1x4h4ut/films_with_beautiful_expressionistic_stuff_like/', 'https://www.reddit.com/gallery/1x4h4ut', 'MoviesThatFeelLike', 'Surreal, visually striking choreographed expressionism.', 'publishable', NULL, NULL, '2026-10-13 02:06:20', '2026-10-13 02:06:20')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1x4hj3r', 'Stories about nothingness', 'Stories about nothingness', '', 'IcyMarsupial6619', 1791848505, '/r/MoviesThatFeelLike/comments/1x4hj3r/stories_about_nothingness/', 'https://i.redd.it/s9978uxfh4vh1.jpeg', 'MoviesThatFeelLike', 'Desolate existential void and stark nothingness.', 'skipped', 'no enriched recommendation matches', NULL, '2026-10-13 02:06:20', '2026-10-13 02:06:20')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1x4hqz0', 'Stories where nothing matters and the only constant is CHAOS', 'Stories where nothing matters and the only constant is CHAOS', '[removed]', '[deleted]', 1791849120, '/r/MoviesThatFeelLike/comments/1x4hqz0/stories_where_nothing_matters_and_the_only/', '', 'MoviesThatFeelLike', 'Nihilistic, unpredictable, and relentless pure chaos.', 'skipped', 'no usable images; no enriched recommendation matches', NULL, '2026-10-13 02:06:20', '2026-10-13 02:06:20')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
