---
id: 5
title: "Implement game enrichment provider"
type: task
parent: 0
status: closed
assignee: max
blocked_by: [1, 3]
---

## Question

Implement the enrichment provider for game candidates using the catalog chosen in *Choose a game enrichment catalog* and the schema from *Schema migration 0003*. The provider should resolve extracted game titles to canonical records with cover, release year, external ID, external URL, and a platforms list. Wire it so the existing `pipeline/enrich.py` flow can dispatch game candidates to it after the media_type check, writing a single combined enrichment artifact the loader consumes.

## Resolution

Implemented by @fixer. Files:

- **`apps/pipeline/src/pipeline/enrich_games.py`** (new, 278 lines) — IGDB provider. OAuth2 client-credentials with in-memory token cache and 401-triggered refresh. Apicalypse `POST /v4/games` with `game_type == 0` filter (the modern IGDB v4 field; the legacy `category` field the asset also mentioned is deprecated and returns `null` in v4). Year tiebreaker in `_best_match` so a query like "Disco Elysium" with `year=2019` lands on the original 2019 release, not The Final Cut or the Android port. Module docstring documents the match-record contract — that contract is what ticket 6 will read.
- **`apps/pipeline/src/pipeline/enrich.py`** (rewritten, 737 lines) — added `media_type` dispatch in the enrichment loop: `movie`/`tv` → existing TMDB path (unchanged), `game` → new IGDB path, `unknown` → unmatched with reason `unsupported media_type`. Lazy IGDB session — created only if any game candidate is present. Conditional `TWITCH_*` env-var check: required only when game candidates are in the artifact. One combined `enrichment-*.json` artifact with both movie/TV and game matches sharing the existing `candidates` / `matches` / `unmatched` / `errors` shape.

### Real IGDB lookups (verified)

| Query            | Year | `igdb_id` | Matched title  | Platforms (count) | `external_url`                          |
|------------------|------|-----------|----------------|--------------------|------------------------------------------|
| Disco Elysium    | 2019 | 26472     | Disco Elysium  | 2                  | `https://www.igdb.com/games/disco-elysium` |
| Stardew Valley   | —    | 17000     | Stardew Valley | 11                 | `https://www.igdb.com/games/stardew-valley` |
| Spider-Man       | —    | 19114     | Spider-Man     | 4                  | `https://www.igdb.com/games/spider-man--1` |

Spider-Man is the 2002 movie tie-in (PS2/Xbox/GameCube/PC), not the 2018 Marvel's Spider-Man PS4 game — that's a separate IGDB entry with a more specific name. Provider handled the ambiguity cleanly (no crash, valid `main_game` result). The year tiebreaker would have disambiguated if a year had been supplied.

### Real enrichment (mixed artifact)

6 candidates in, 5 matched, 1 unmatched (`unknown` media_type), 0 errors:
- 3 game matches (Disco Elysium, Stardew Valley, Spider-Man) with `igdb_id`, `external_url`, `platforms`, `poster_url`
- 2 movie matches (Shawshank Redemption, Blade Runner 2049) with `tmdb_id`, `imdb_id`
- 1 unknown unmatched

Game matches have no TMDB-specific fields; movie matches have no IGDB fields. `media_type` is correct on every row.

### Existing movie/TV-only run

Confirmed unchanged: a movie-only extraction artifact (no `media_type="game"` candidates) runs the existing TMDB path end-to-end without requiring the Twitch env vars. Same output shape as before this work.

### Deviations from the spec

- **`category` → `game_type`**: the asset's "Edge Cases" section said "Filter to `category = 0` (main_game) or `game_type` = main game." The `category` field is deprecated in IGDB v4 and returns `null` for all results. The implementation uses `game_type == 0` instead. The asset already flagged this as an acceptable alternative. Documented in `enrich_games.py:_best_match` docstring.

### Handoff to ticket 6

The match records `enrich_games.build_match` produces carry the full field set the schema supports (`igdb_id`, `external_url`, `platforms`, plus the reused `poster_url` / `overview` / `release_year`). Ticket 6 — *Update loader for game records* — needs to (a) extend the loader's column-presence check to also require `igdb_id` (the loader currently hardcodes a check for `evidence_score` / `evidence_comment_score` only), and (b) switch `_upsert_recommendation`'s lookup to `igdb_id + media_type` for games, and (c) write the new columns for game records (the current loader doesn't touch `igdb_id` / `external_url` / `platforms`, so a game record loaded today would land in the DB with those columns NULL even though the enrichment artifact has the values).
</content>
</invoke>