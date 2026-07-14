# Game Catalog API Comparison

**Context:** Enriching game recommendations from r/MoviesThatFeelLike in the `movies-that-feel-like` pipeline. Needs: free-text title → canonical record, cover image, release year, platforms list. Free-tier only, small batch (≤ a few hundred lookups per pipeline run).

---

## Comparison Table

| Criterion | **IGDB** (Twitch) | **RAWG** | **GiantBomb** | **MobyGames** |
|---|---|---|---|---|
| **Free tier** | Unlimited (non‑commercial), 4 req/s, 8 concurrent | 20,000 req/month, attribution required | Currently **unavailable** — API suspended after May 2025 sale | **None** — free key killed Sep 2024; Hobbyist $9.99/mo |
| **Auth** | OAuth2 client‑credentials (Client ID + Secret → bearer token) | API key as query param | API key (was) | API key (paid only) |
| **Env vars** | `TWITCH_CLIENT_ID`, `TWITCH_CLIENT_SECRET` | `RAWG_API_KEY` | — | — |
| **Search endpoint** | `POST /v4/games` with Apicalypse body `search "query";` | `GET /api/games?search=query` | `GET /api/search/?query=...&resources=game` (was) | `GET /v1/games?title=...` (paid only) |
| **Cover art** | `//images.igdb.com/igdb/image/upload/t_{size}/{id}.jpg` — multiple sizes available | `background_image` field — official art URL from `media.rawg.io` | `image` field (was) | Cover images (paid tier) |
| **Platforms** | `platforms[]` array with `name` | `platforms[].platform.name` | `platforms[]` array (was) | Platform data (paid tier) |
| **Release year** | `first_release_date` (unix timestamp) | `released` (ISO date `YYYY-MM-DD`) | `original_release_date` (was) | Per‑platform release dates (paid tier) |
| **Game count** | ~350,000+ | ~500,000+ | ~200,000+ (historical, not current) | ~327,000 |
| **Indie/obscure coverage** | Strong — crowdsourced, owned by Twitch, broad | Good — but metadata thinner on older/obscure titles | Strong historically — but data is stale now | Strong — deep retro/credit data |
| **Image quality** | Official cover art at configurable resolutions up to 1080p | Official art and screenshots, URL pattern `media.rawg.io` | Medium — mixed (was) | Good — cover art (paid) |
| **2026 concerns** | None — stable, owned by Twitch/Amazon, v4 is mature | Attribution requirement could conflict with UI preferences; API key issuance may gate | **DO NOT USE** — API shut down mid‑2025 during ownership transition; being rebuilt from scratch on MediaWiki; no ETA | Paywalled; 0.2 req/s on Hobbyist tier makes batch use painful |
| **TOS for hobby pipeline** | Free for non‑commercial under Twitch Developer Service Agreement | Free for ≤100K MAU / 500K pageviews; attribution required | — | $9.99/mo minimum + non‑commercial only |

---

## Honourable Mention: Other Candidates

### Steam Store API (Unofficial, but stable)

| Item | Detail |
|---|---|
| **Search** | `GET https://store.steampowered.com/api/storesearch/?term=QUERY&cc=US` — no auth required |
| **Free tier** | ~200 req / 5 min per IP, fully free |
| **Coverage** | **Steam PC/Mac/Linux only.** No PlayStation, Xbox, Nintendo, or any console. Misses many indie games not on Steam. |
| **Why not primary?** | The pipeline extracts game mentions from Reddit discussions about *vibe images* — those could be console games, Switch indies, retro titles, or anything. Steam-only coverage would miss most of them. **Useful as a fallback/supplement, not as the primary catalog.** |

### GameBrain

| Item | Detail |
|---|---|
| **Search** | `GET https://api.gamebrain.co/v1/games?query=...` |
| **Free tier** | 50 tokens/day (1,500/month), non-commercial only, requires backlink |
| **Why not primary?** | Token-per-request pricing kills batch use. 50 lookups/day is too tight for any real pipeline run. |

---

## Deep Dive: The Top 2 Candidates

### IGDB (Recommended)

**Why it fits the pipeline:**
- **Truly unlimited free tier** for non‑commercial use — no per‑day/per‑month request cap, just a 4 req/s throttle that a sequential batch pipeline will never hit.
- **Auth is standard OAuth2** — `TWITCH_CLIENT_ID` and `TWITCH_CLIENT_SECRET` env vars, same pattern as the existing TMDB bearer token. Token refresh is automatic (60-day expiry, cached in memory).
- **Search is precise** — the Apicalypse `search "exact title";` syntax with `limit` and field selection lands a direct hit on most titles. You can also filter by release date ranges to disambiguate.
- **Covers are configurable** — the `t_cover_big` (227×320) is perfect for card UI, and you can go up to 1080p. Official box art, not fanart.
- **Platform names come back in the search results** — no extra round-trips. You get `platforms[].name` (e.g. "PC", "PlayStation 5", "Nintendo Switch").
- **Coverage is broad** — IGDB is the most widely used game API in open source (1,000+ code snippets on Context7, hundreds of GitHub wrappers). Its crowdsourced model means even obscure indie games are present.
- **Stable ownership** — Twitch (Amazon) has owned IGDB since 2019. v4 has been the standard since 2020. No upheavals.

**Risks:**
- The Twitch Developer Service Agreement says "non-commercial" — but this is a personal hobby site, not a business. The same agreement covers thousands of hobby projects.
- Requires registering a Twitch developer application (free, takes 5 minutes). Two-factor auth must be enabled on the Twitch account.

**Sources:**
- [IGDB API Docs — Getting Started](https://api-docs.igdb.com/)
- [IGDB API — Rate Limits](https://api-docs.igdb.com/#rate-limits) (4 req/s, 8 concurrent)
- [IGDB API — Images](https://api-docs.igdb.com/#images) (size reference)
- [Twitch Developer Console](https://dev.twitch.tv/console/apps) (app registration)
- [IGDB on Context7](https://context7.com) — 1,025 code snippets, benchmark 83.9
- [Twitch Developer Forums — Commercial use of IGDB API](https://discuss.dev.twitch.com/t/commercial-use-of-igdb-api/23567) (IGDB admin confirms free for non-commercial)

### RAWG

**Why it's worth considering:**
- **Simpler auth** — single API key as a query param. No OAuth ceremony.
- **Search is a plain GET** — `api.rawg.io/api/games?search=Hades`. Familiar, easy to debug.
- **20,000 requests/month** (~667/day) is plenty for a pipeline running a few hundred lookups.
- **500,000+ games** — the largest claimed catalog count.
- **Response includes `background_image`** (cover art) and `platforms[].platform.name` directly in search results.

**Why it's not the recommendation:**
- **Attribution requirement** — RAWG requires "an active hyperlink from every page where the data of RAWG is used." If the pipeline doesn't show attribution on the public site, this is a TOS violation. The map.md says "minimum metadata" — attribution isn't currently in scope.
- **20K/month ceiling** is manageable but finite. If any future feature (e.g., importing subreddit archives) scales up lookups, you'd hit the cap. IGDB has no cap.
- **API key gating** — as of 2021, RAWG started requiring key registration with approval. There's a small friction risk.
- **Image quality varies** — `background_image` can be a screenshot or promotional art, not always a clean box-art cover. IGDB's `cover` endpoint delivers consistent box art.

**Sources:**
- [RAWG API Docs](https://api.rawg.io/docs/)
- [RAWG Pricing / TOS](https://rawg.io/tos_api) (20K/month free, attribution required)
- [RAWG API Key Registration](https://rawg.io/apidocs)

---

## Disqualified Candidates

### GiantBomb — API is currently unavailable

GiantBomb was sold by Fandom to independent owners (Jeff Bakalar, Jeff Grubb) in May 2025. As part of the transition, the entire tech stack is being rebuilt from scratch on MediaWiki. The old Fandom-hosted API endpoints are explicitly listed as **"Not currently available"** on [giantbomb.com/api](https://giantbomb.com/api) as of December 2025. An open‑source [wiki rebuild](https://github.com/Giant-Bomb-Dot-Com/giant-bomb-wiki) is in progress but still in alpha. **There is no active game API today, and no ETA for a replacement.** Do not depend on it.

Source: [giantbomb.com/api](https://giantbomb.com/api) ("The Giant Bomb API has long been a free resource… Not currently available are any of the APIs for: Games, Characters, Companies…")

### MobyGames — Paywalled since September 2024

The free MobyGames API key was deprecated in September 2024. The cheapest tier with API access is the **Hobbyist plan at $9.99/month** (0.2 requests/sec, non‑commercial use only, billed annually at $7.99/mo). The rate limit (1 request per 5 seconds) would make a ~300-game lookup run take ~25 minutes. Not suitable for a free hobby pipeline.

Source: [MobyGames Subscription Tiers](https://www.mobygames.com/mobyplus/subscribe/), [MobyGames Forum — Clarification on API Rate Limits](https://www.mobygames.com/forum/4/thread/270225/clarification-on-api-rate-limits-and-429-too-many-requests-error/)

---

## Recommendation

**Use IGDB as the primary game enrichment catalog.** Rawg is a viable backup. GiantBomb is dead for now. MobyGames is paywalled.

### Why IGDB

IGDB is the only serious candidate with a genuinely unlimited free tier, stable corporate ownership (Twitch/Amazon), a mature v4 API that's battle-tested across thousands of open-source projects, and direct access to cover art, platform lists, and release years in a single search query. The auth flow (OAuth2 client‑credentials) is the same pattern the pipeline already uses for TMDB, and the 4 req/s rate limit is irrelevant for a sequential batch pipeline doing a few hundred lookups. RAWG's attribution requirement creates a TOS risk the project isn't ready to absorb, and its 20K/month cap adds a scaling constraint IGDB doesn't have.

---

## Next Steps: Provider Implementation Ticket

Below is the spec for the `implement-game-provider.md` ticket. Copy this into `.wayfinder/tickets/05-implement-game-provider.md`.

### Auth Env Vars

```
TWITCH_CLIENT_ID       # Twitch developer application client ID
TWITCH_CLIENT_SECRET   # Twitch developer application client secret
```

**Setup:**
1. Create a Twitch account (or use existing).
2. Enable two-factor auth on the Twitch account.
3. Register an application at https://dev.twitch.tv/console/apps (set OAuth Redirect URL to `http://localhost` — it's not used for client‑credentials flow).
4. Copy the **Client ID** and generate a **Client Secret**.
5. Set `TWITCH_CLIENT_ID` and `TWITCH_CLIENT_SECRET` in the pipeline environment (`.env` or `direnv`).

### Token Exchange

```
POST https://id.twitch.tv/oauth2/token
  ?client_id={TWITCH_CLIENT_ID}
  &client_secret={TWITCH_CLIENT_SECRET}
  &grant_type=client_credentials
```

Response:
```json
{
  "access_token": "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  "expires_in": 5093280,
  "token_type": "bearer"
}
```

Cache the token in memory. It lives ~60 days. Refresh by re-calling the endpoint when a 401 is received.

### Base URL

```
https://api.igdb.com/v4
```

### Search Endpoint

```
POST https://api.igdb.com/v4/games
```

**Headers:**
```
Client-ID: {TWITCH_CLIENT_ID}
Authorization: Bearer {ACCESS_TOKEN}
Accept: application/json
```

**Body:**
```
search "{query}";
fields name, first_release_date, cover.url, platforms.name, slug, summary;
limit 5;
```

### Response Fields to Read

| Field | Path | Use |
|---|---|---|
| `id` | `[].id` | IGDB internal game ID |
| `name` | `[].name` | Canonical game title |
| `slug` | `[].slug` | URL‑safe identifier, useful for external links |
| `first_release_date` | `[].first_release_date` | Unix timestamp → extract year |
| `cover.url` | `[].cover.url` | Cover image path (protocol‑relative, prepend `https:`) |
| `platforms[].name` | `[].platforms[].name` | Platform names as strings (e.g. "PC", "PlayStation 5") |

### Image URL Construction

The `cover.url` field returns a URL in the format:
```
//images.igdb.com/igdb/image/upload/t_thumb/{image_id}.jpg
```

Replace `t_thumb` with a desired size. Recommended for this project:
- **`t_cover_big`** — 227×320 px, good for card UI
- **`t_cover_big_2x`** — retina version

Pattern:
```python
f"https:{cover_url.replace('t_thumb', 't_cover_big')}"
```

Full size reference: [IGDB Image API](https://api-docs.igdb.com/#images)

### Rate Limiting

- **4 requests per second** per client ID.
- **8 concurrent requests** maximum.
- Sequential batch processing (1 req at a time with `time.sleep(0.25)`) will never hit these limits. The existing TMDB enrichment already uses this pattern.

### Error Handling

| HTTP Status | Meaning | Action |
|---|---|---|
| 200 | Success | Parse response |
| 401 | Token expired | Re‑authenticate, retry |
| 429 | Rate limit exceeded | Sleep 1s, retry |
| 404/400 | Bad request / not found | Log and skip |

### Edge Cases

- **No match found:** Empty array `[]` returned. Log as unmatched (same pattern as TMDB `unmatched` list in `enrich.py`).
- **Game has no cover:** `cover` field is `null`. Set `cover_url` to `None`.
- **Game has no release date:** `first_release_date` is `null`. Set `release_year` to `None`.
- **Multi‑platform game:** `platforms` array contains one entry per platform. Concatenate into a JSON list on the recommendation row (per the schema decision in map.md).
- **DLC / expansion in results:** The `category` field distinguishes main games from DLC. Filter to `category = 0` (main_game) or `game_type` = main game. See [IGDB game_type reference](https://api-docs.igdb.com/#game-type).
