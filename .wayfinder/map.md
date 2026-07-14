---
id: 0
title: "Map: Support game recommendations in Movies That Feel Like"
type: map
status: open
---

## Destination

One Reddit post from r/MoviesThatFeelLike, whose comments include a game mention, fully imported → extracted (with the game as a `game` `media_type`) → enriched via a chosen game catalog → loaded into D1 → rendered on the existing site with a game badge alongside any movies in the same post.

## Notes

Domain: this repo's pipeline is currently hardcoded to movies/TV. Every layer (Pydantic `ExtractedRecommendation.media_type` enum, the `recommendations.media_type` CHECK constraint, TMDB-only enrichment, UI badges that show 🎬/📺, IMDB/TMDB external links) will need to grow a `game` branch. The work is additive everywhere — movies/TV must keep working unchanged.

Skills every session should consult: `domain-modeling` (sharpening the data model), `grilling` (decision-making), `code-review` (before merging), `wrangler` (D1 migrations / local dev), `impeccable` or `frontend-design` (UI chrome on post/rec pages), `cloudflare` (D1/R2/Pages architecture), `diagnosing-bugs` (when pipeline/build failures appear).

Standing preferences from the destination-grilling session:

- Source: extract from r/MoviesThatFeelLike (not a new subreddit pipeline).
- UI: mixed feed with media-type badges; no separate `/games/` section.
- Game metadata scope: minimum — title, release year, cover image, external ID + URL. No platform/developer/publisher/genre columns on the row.
- Multi-platform games: one record per game; platforms stored as a JSON list on the row.
- Movies/TV pipeline (Pydantic models, TMDB, current UI) stays untouched in shape; only the enums and render branches learn about games.

## Decisions so far

<!-- the index — one line per closed ticket: enough to judge relevance, then zoom the link for the detail the ticket holds -->

- [Choose a game enrichment catalog](tickets/01-choose-game-catalog.md) — **IGDB** (Twitch/Amazon). OAuth2 client-credentials, env vars `TWITCH_CLIENT_ID` + `TWITCH_CLIENT_SECRET`. Full spec in [the asset](assets/01-game-catalog-comparison.md). RAWG was runner-up; GiantBomb and MobyGames are out (suspended / paywalled).
- [Design game schema additions](tickets/02-design-game-schema.md) — three new nullable columns on `recommendations`: `igdb_id INTEGER`, `external_url TEXT`, `platforms TEXT` (JSON-encoded array). Extend `media_type` CHECK to include `'game'` via temp-table migration. Reuse `poster_url` / `overview` / `release_year` for game semantics; **don't store raw IGDB response** (the existing `tmdb_data` column is write-only and not worth compounding). Loader's upsert switches lookup by `media_type` (ticket 6) and writes `tmdb_data = NULL` for game records. Candidate-key function unchanged.
- [Schema migration 0003: extend recommendations for games](tickets/03-schema-migration-0003.md) — `0003_games.sql` written, verified against a fresh DB and a DB at 0002. Temp-table pattern; FKs disabled around the DROP+RENAME. Pre-existing movie rows + evidence links survive. Both `media_type = 'game'` inserts and the new `igdb_id` index are working. Caller-side column-presence check extension is a follow-up for ticket 6.
- [Update extraction to surface game recommendations](tickets/04-update-extraction-prompt.md) — `ExtractedRecommendation.media_type` Literal widened to `["movie", "tv", "game", "unknown"]`. `SYSTEM_INSTRUCTION` rewritten to ask for game titles alongside movies/TV; new rule excludes DLC / mods / platform-only mentions to reduce noise. Mixed-rec case (one comment → both a movie and a game) handled by emitting two `ExtractedRecommendation` entries sharing the same evidence. `EXTRACTION_SCHEMA_VERSION` bumped `v1` → `v2`, which invalidates existing checkpoints. Pydantic round-trip + prompt construction verified; LLM game-detection quality deferred to ticket 8.
- [Implement game enrichment provider](tickets/05-implement-game-provider.md) — `enrich_games.py` (new) with IGDB OAuth2, Apicalypse search, `game_type==0` main_game filter, year tiebreaker. `enrich.py` dispatch loop: movie/tv → TMDB, game → IGDB, unknown → unmatched. Lazy IGDB session, conditional Twitch env check, single combined enrichment artifact. Verified: 3 real IGDB lookups (Disco Elysium, Stardew Valley, Spider-Man) plus a mixed-artifact enrichment run (3 games + 2 movies matched, 1 unknown unmatched, 0 errors). Movie/TV-only runs unchanged. Deviation from spec: filter uses `game_type` (modern v4) instead of deprecated `category`; the asset flagged this as an acceptable alternative. Match-record contract documented in `enrich_games.py` for ticket 6.
- [Update loader for game records](tickets/06-update-loader-for-games.md) — `_upsert_recommendation` now dispatches on `media_type`: game branch looks up by `igdb_id + media_type` and writes `igdb_id` / `external_url` / `platforms` (JSON-encoded) plus explicit `imdb_id=NULL, tmdb_data=NULL`; movie/TV branch keeps `tmdb_id + media_type` lookup and now also writes `igdb_id=NULL, external_url=NULL, platforms=NULL`; unknown is a defensive skip. Column-presence check extended to require `igdb_id` (catches 0002-only DBs with a clear error). Evidence linking lookup also branched on `media_type` (latent bug, would have failed for game evidence). All 6 verification checks passed: compile, smoke-load, re-insert update, column-presence 0002-only, E2E load with SQL dump inspection, movie-only backward compat. No spec deviations.
- [Update post and recommendation pages for game chrome](tickets/07-update-ui-for-games.md) — `db.ts` `Recommendation` interface grew `igdb_id` / `external_url` / `platforms`. `posts/[id].astro` rec card badge ternary extended with `game` → `🎮`. `recommendations/[id].astro` got three changes: badge branch, IGDB stats block (single `IGDB` stat linking to `external_url` instead of IMDb+TMDB for games), and a `platforms` list (JSON-parsed, rendered as `badge-soft badge-outline` tags) only for game records. Movie/TV chrome byte-identical. No SELECT changes. No new dependencies. Build verification deferred — `npm install` was skipped on the user's instruction; they will run it themselves.
- [End-to-end smoke on a real game-mention post](tickets/08-end-to-end-smoke.md) — **destination reached.** Real r/MoviesThatFeelLike post `1q1ytxf` ("Movie(s) that feel like this", Pirates vibes). LLM extracted 7 game candidates (Monkey Island series + Witcher 2). All 7 resolved via IGDB. D1 row for the post is `status='publishable'`; 7 game records with `igdb_id` / `external_url` / `platforms` / `release_year` / `poster_url` populated. Build succeeded. Dev server rendered the post page with 🎮 badges + IGDB cover images; rendered the rec detail page with the "🎮 Game" badge, IGDB stat block, and platforms list. Findings (not blocking): LLM game-detection recall is conservative (1/30 posts in the test batch produced a game candidate); 1 IGDB hallucination; `fetch.py` comment-count display is cosmetic-broken; `npm install` doesn't work in this env (project uses bun). **Map is done.**
- [Stop writing the unused tmdb_data JSON column](tickets/09-stop-writing-tmdb-data.md) — `load.py` no longer writes `tmdb_data` in any of the four SQL statements (game UPDATE/INSERT and movie/TV UPDATE/INSERT); the explicit `tmdb_data=NULL` in the game branch was also removed (writing NULL to a dropped column would error). `0004_drop_tmdb_data.sql` (new) drops the column with a single `ALTER TABLE … DROP COLUMN`. Migrations remain append-only (0001–0003 untouched). All 7 verification checks passed: no writes in load.py, compile clean, fresh DB drops the column, DB at 0003 with data survives the drop, no read references in the Astro code, real load works, build succeeds.

## Not yet specified

<!-- in-scope fog that can't yet be ticketed — graduates into tickets as the frontier advances -->

- ~~LLM (`deepseek-v4-flash`) reliability at distinguishing game mentions from movie mentions inside the same comment thread — will surface during ticket *Update extraction to surface game recommendations* and may force a prompt-iteration follow-up.~~ **Resolved by ticket 08 + user clarification.** Recall is conservative (1/30 posts produced a game candidate in the smoke batch) but that matches the subreddit's actual content mix — r/MoviesThatFeelLike is "usually movies/TV with a game straggler once in a while" per the user. The LLM extraction quality is correct for the destination; no follow-up needed.
- Game-catalog coverage of older / indie / less-mainstream titles — surfaced during ticket *Implement game enrichment provider*. **No follow-up needed.** IGDB coverage was strong for the test batch (all 7 game candidates resolved); catalog is fine as-is for the destination.
- ~~Whether mixed-source posts (some movie, some game recommendations) cleanly pass the existing publishability gate, or whether the gate needs a small `media_type`-aware relaxation — will surface during ticket *End-to-end smoke on a real game-mention post*.~~ **Graduated by ticket 08.** The smoke post had 7 games + multiple movie/TV matches and passed the publishability gate cleanly. No relaxation needed.
- Whether the LLM needs an explicit "this comment is *not* a recommendation" signal beyond the current `extraction_notes` path — surfaces during extraction. **Not exercised by ticket 08**; the test batch didn't have a post where this would matter. Still fog.

## Out of scope

- A separate `/games/` section, subdomain, or marketing site — UI is a mixed feed with media-type badges.
- Normalized platform / genre / developer / publisher tables — minimum metadata stays on the `recommendations` row.
- A separate r/GamesThatFeelLike subreddit pipeline — extraction is from the same subreddit.
- Re-architecting the TMDB enrichment into a generic multi-provider abstraction — TMDB stays for movies/TV; games get a parallel provider.
- Image analysis of the post images to detect whether the vibe is game-themed — the pipeline stays text-only.
- DLC, mobile games, web games, mods, or expansions as separate `media_type` values — they're all `game`.
- Localization / non-English game titles — first version is English only.
- User-submitted recommendations — the product is browse-only.
- Displaying Reddit comments on the public site — they remain internal to processing.
- Production Cloudflare D1 / R2 / Pages deployment — local Wrangler dev is enough to reach the destination.

### Queued follow-up work (not on the games destination's route)

*None open at the end of this iteration.* The `tmdb_data` cleanup that was queued here has been closed (see Decisions so far). If future work surfaces follow-up items (e.g. LLM game-recall improvements from the smoke-test findings), they'll be added as new tickets.
</content>
</invoke>