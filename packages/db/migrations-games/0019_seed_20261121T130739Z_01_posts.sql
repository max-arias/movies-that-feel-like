-- 0019_seed_20261121T130739Z_01_posts.sql: data seed from pipeline:load run.
-- Generated:  2026-11-21T13:07:40.427712+00:00
-- Run started: 2026-11-21T13:07:39.857017+00:00
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
VALUES ('1y1fg9g', '"Evening the odds" games, where protagonist serves as the nuclear option for one side', '"Evening the odds" games, where protagonist serves as the nuclear option for one side', '', 'gracekk24PL', 1795210293, '/r/GamesThatFeelLike/comments/1y1fg9g/evening_the_odds_games_where_protagonist_serves/', 'https://www.reddit.com/gallery/1y1fg9g', 'GamesThatFeelLike', 'The power fantasy of being the single overwhelming force a desperate side has been waiting for, walking into a war that cannot handle you.', 'publishable', NULL, NULL, '2026-11-21 13:07:40', '2026-11-21 13:07:40', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y1fwmb', 'Games that feel like this?', 'Games that feel like this?', '', 'According-Self9700', 1795211497, '/r/GamesThatFeelLike/comments/1y1fwmb/games_that_feel_like_this/', 'https://www.reddit.com/gallery/1y1fwmb', 'GamesThatFeelLike', 'Pulp Cold War sci-fi dread, retro-futurist machines and alien invasion under a cheesy B-movie glow.', 'publishable', NULL, NULL, '2026-11-21 13:07:40', '2026-11-21 13:07:40', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y1gg9e', 'Feels Like the Early 2000s', 'Feels Like the Early 2000s', '', 'bingewavecinema', 1795212902, '/r/GamesThatFeelLike/comments/1y1gg9e/feels_like_the_early_2000s/', 'https://v.redd.it/49j0j65adu2i1', 'GamesThatFeelLike', 'Turn-of-the-millennium sci-fi nostalgia, all chrome menus, alien dread and early-2000s CGI glow.', 'publishable', NULL, NULL, '2026-11-21 13:07:40', '2026-11-21 13:07:40', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y1gq5w', 'Games that make you feel empty/hopeless when you finish them (but in a good way)', 'Games that make you feel empty/hopeless when you finish them (but in a good way)', '', 'GothicMajula', 1795213617, '/r/GamesThatFeelLike/comments/1y1gq5w/games_that_make_you_feel_emptyhopeless_when_you/', 'https://i.redd.it/1qm1zlopfu2i1.png', 'GamesThatFeelLike', 'The hollow, bittersweet ache left behind when a story you loved finally closes and you have to walk away.', 'publishable', NULL, NULL, '2026-11-21 13:07:40', '2026-11-21 13:07:40', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y1h3c8', 'games that feel like exploring an empty world that wasnt meant for you', 'games that feel like exploring an empty world that wasnt meant for you', 'in other words exploring an empty world that definitely should not be empty

recently i watched a very good dark souls horror series where the world had seemingly already been traversed and the player had no reason to be there and yet was there anyways and it made me consider this sort of thing and i would like to know if theres any other game or experience that fit that vibe .

image 1 - empty source maps

the classic and probably best example of what im thinking of, but its not the intent of gmod to be like this

2 - empty blade and sorcery maps

basically the same as gmod but in vr . whenever im in a dungeon in b&s and im alone it freaks me the fuck out and i want that feeling in a game designed around that . again, not the intended experience of the game 

3 - this comment on the aforementioned dark souls horror series that put it perfectly

this is exactly the vibe i want . the chosen one has already been here and you just missed it . the world has served its purpose and has been emptied of the now unneeded threats and npcs

4 - half life 2 alone mod

basically exactly what i want . i want something like the half life 2 alone mod . maybe this post should be titled "games that feel like the half life 2 alone mod"

  
i know of games like No Players Online and that got so close to being it but then it started the whole "the dev''s dead wife''s soul is trapped in the game and now the developer is talking to you" plotline that muddied the emptiness and stopped scratching that itch

  
basically im thinking of a game where exploring a world with nobody in it is the intended experience . optional bonus points if its never explained why the world is so empty so you get to let your mind run wild

i hope this makes sense ! any and all suggestions are greatly appreciated', '7drag0n', 1795214593, '/r/GamesThatFeelLike/comments/1y1h3c8/games_that_feel_like_exploring_an_empty_world/', 'https://www.reddit.com/gallery/1y1h3c8', 'GamesThatFeelLike', 'Wandering a vast, silent world whose story already ended, where you are an intruder nobody was expecting.', 'publishable', NULL, NULL, '2026-11-21 13:07:40', '2026-11-21 13:07:40', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
