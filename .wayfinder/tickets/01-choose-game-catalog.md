---
id: 1
title: "Choose a game enrichment catalog"
type: research
parent: 0
status: closed
assignee: max
blocked_by: []
---

## Question

Which game catalog should we use to enrich extracted game recommendations — IGDB, RAWG, GiantBomb, MobyGames, or other? Pick based on free-tier data quality, API stability, game metadata coverage (especially older / indie titles), image quality, and rate limits. Document the choice and the auth flow we'll use so the provider implementation ticket can proceed without re-asking.

## Resolution

**Catalog: IGDB** (Twitch/Amazon-owned). The only serious candidate with a genuinely unlimited non-commercial free tier, stable ownership, mature v4 API, and the three fields we need (cover, release year, platforms) in a single search query. Auth uses OAuth2 client-credentials with two new env vars (`TWITCH_CLIENT_ID`, `TWITCH_CLIENT_SECRET`) — the same pattern the pipeline already uses for TMDB. RAWG was a viable runner-up but its attribution requirement creates TOS friction the project isn't ready to absorb. GiantBomb's API is suspended post-May-2025 sale. MobyGames has been paywalled since September 2024.

Full comparison and the provider implementation spec (env vars, token exchange, search endpoint, response fields, image URL construction, rate limits, error handling, edge cases including DLC filter) lives in the linked asset. Ticket 5 — *Implement game enrichment provider* — can now proceed against this spec without re-asking.

**Asset:** [01-game-catalog-comparison.md](../assets/01-game-catalog-comparison.md)
</content>
</invoke>