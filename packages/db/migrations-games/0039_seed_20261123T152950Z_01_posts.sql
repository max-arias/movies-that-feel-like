-- 0039_seed_20261123T152950Z_01_posts.sql: data seed from pipeline:load run.
-- Generated:  2026-11-23T15:29:50.872423+00:00
-- Run started: 2026-11-23T15:29:50.059359+00:00
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

INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y2cfvs', 'RTS Games with ground/naval/space carriers? Preferably ones with a campaign, that wont overwhelm me?', 'RTS Games with ground/naval/space carriers? Preferably ones with a campaign, that wont overwhelm me?', '', 'Toocoolcolin', 1795309212, '/r/GamesThatFeelLike/comments/1y2cfvs/rts_games_with_groundnavalspace_carriers/', 'https://i.redd.it/9zi0eii0c23i1.png', 'GamesThatFeelLike', 'Fleet-command daydreaming about standing on a carrier deck while wings launch into the dark.', 'publishable', NULL, NULL, '2026-11-23 15:29:50', '2026-11-23 15:29:50', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y2f2uk', 'game that like  Horizon Zero Dawn', 'game that like Horizon Zero Dawn', '', 'daddylongjohnsliver', 1795317375, '/r/GamesThatFeelLike/comments/1y2f2uk/game_that_like_horizon_zero_dawn/', 'https://www.reddit.com/gallery/1y2f2uk', 'GamesThatFeelLike', 'Lush post-apocalyptic wilds where tribal hunters stalk towering machine beasts.', 'publishable', NULL, NULL, '2026-11-23 15:29:50', '2026-11-23 15:29:50', 'Horizon Zero Dawn', 11156)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y2f3n9', 'Games that show your holstered weapons on your characters (preferably Shooters but melee games are fine too)', 'Games that show your holstered weapons on your characters', 'RD/2, GTA6. Mass Effect are the first games I can think of that do this but I’m sure there plenty out there I’m forgetting or don’t know about.

I just find it to be cool. ', 'IndexoTheFirst', 1795317448, '/r/GamesThatFeelLike/comments/1y2f3n9/games_that_show_your_holstered_weapons_on_your/', 'https://www.reddit.com/gallery/1y2f3n9', 'GamesThatFeelLike', 'Tactical-gear daydreaming about slung rifles, clanking kit and visible loadouts.', 'publishable', NULL, NULL, '2026-11-23 15:29:50', '2026-11-23 15:29:50', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y2ipua', 'Games that feel like this short musical piece', 'Games that feel like this short musical piece', '', 'Wolpy414', 1795329703, '/r/GamesThatFeelLike/comments/1y2ipua/games_that_feel_like_this_short_musical_piece/', 'https://youtu.be/0NgPOBR18Og?is=N8CzKO2U-zjSi3P4', 'GamesThatFeelLike', 'Somber piano melancholy that drifts between sorrowful calm and hopeless grandeur.', 'publishable', NULL, NULL, '2026-11-23 15:29:50', '2026-11-23 15:29:50', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y2keyo', 'emochi: a daily labyrinth game on war more', 'emochi: a daily labyrinth game on war more', '  
A daily maze puzzle with fog of war

Emochi is a free browser game: one labyrinth a day, the same for every player. The maze is hidden in fog. Each step reveals the cells around you, walls stay mapped once found, and the exit stays hidden until you reach it. You have 22 moves.

# How Emochi works

* **Move** with the D-pad, arrow keys, WASD or a swipe. Every move costs one, including bumping a wall.
* **Investigate** casts an echo for one move: the exit''s compass bearing and whether it is close, a few turns away or far by path.
* **Score** 100 points for escaping, plus bonuses for spare moves, exploration, echoes, clean runs and last-move clutch escapes.
* **Play daily** to build a streak and climb the leaderboard, or try unlimited unranked practice mazes.

', 'Fair-Station-3145', 1795336034, '/r/GamesThatFeelLike/comments/1y2keyo/emochi_a_daily_labyrinth_game_on_war_more/', 'https://i.redd.it/lo44ly6di43i1.png', 'GamesThatFeelLike', 'A single fog-shrouded maze per day, mapped step by step in echoing darkness.', 'skipped', 'no enriched recommendation matches; not a request', NULL, '2026-11-23 15:29:50', '2026-11-23 15:29:50', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
