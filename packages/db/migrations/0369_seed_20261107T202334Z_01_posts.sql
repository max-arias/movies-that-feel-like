-- 0369_seed_20261107T202334Z_01_posts.sql: data seed from pipeline:load run.
-- Generated:  2026-11-07T20:24:11.977060+00:00
-- Run started: 2026-11-07T20:23:34.064963+00:00
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
VALUES ('1xp0oo3', 'Movies that feel like getting lost when Trick or treating and something bad happening', 'Movies that feel like getting lost when Trick or treating and something bad happening', 'Looking for something abstract / surrealist horror films. Something like Return of the Pumpkin Rabbit, Little Nightmares or Coroline. The more Avant Garde/Weird it is the better (but please keep it eerie)

looking for short films too', 'AgitatedOne57', 1793929809, '/r/MoviesThatFeelLike/comments/1xp0oo3/movies_that_feel_like_getting_lost_when_trick_or/', 'https://www.reddit.com/gallery/1xfj99o', 'MoviesThatFeelLike', 'Eerie surreal dread of getting lost in a suburban neighborhood on Halloween night', 'publishable', NULL, NULL, '2026-11-07 20:24:11', '2026-11-07 20:24:11')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xp29yl', 'Grandpa Joe Movie??', 'Grandpa Joe Movie??', '', 'DBGTSUPER', 1793934540, '/r/MoviesThatFeelLike/comments/1xp29yl/grandpa_joe_movie/', 'https://youtu.be/BdMQ-qB9zuA?si=Bk9vDTHlUPX4yUNP', 'MoviesThatFeelLike', 'Curious inquiry about a whimsical film character', 'skipped', 'no enriched recommendation matches', NULL, '2026-11-07 20:24:11', '2026-11-07 20:24:11')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xp2a19', 'What are movies like lost in starlight?', 'What are movies like lost in starlight?', '', 'Tangowithelmangos', 1793934546, '/r/MoviesThatFeelLike/comments/1xp2a19/what_are_movies_like_lost_in_starlight/', 'https://www.reddit.com/r/u_Tangowithelmangos/comments/1xp293e/what_are_movies_like_lost_in_starlight/', 'MoviesThatFeelLike', 'Melancholic romantic cosmic sci-fi wonder', 'skipped', 'no usable images; no enriched recommendation matches', NULL, '2026-11-07 20:24:11', '2026-11-07 20:24:11')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xp2b5r', 'Help me with my movie series!', 'Help me with my movie series!', '', 'TarushSinghal', 1793934646, '/r/MoviesThatFeelLike/comments/1xp2b5r/help_me_with_my_movie_series/', 'https://www.reddit.com/r/TrueFilm/comments/1xp2ayj/help_me_with_my_movie_series/', 'MoviesThatFeelLike', 'Curating a themed film series marathon', 'skipped', 'no usable images; no enriched recommendation matches', NULL, '2026-11-07 20:24:11', '2026-11-07 20:24:11')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xp2p1m', 'Apocalypse Z (2026) Movie Review 🍿', 'Apocalypse Z (2026) Movie Review', '[removed]', 'Sagar_basak', 1793935824, '/r/MoviesThatFeelLike/comments/1xp2p1m/apocalypse_z_2026_movie_review/', 'https://i.redd.it/y3wfz658wwzh1.jpeg', 'MoviesThatFeelLike', 'Post-apocalyptic movie review discussion', 'skipped', 'no enriched recommendation matches', NULL, '2026-11-07 20:24:11', '2026-11-07 20:24:11')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
