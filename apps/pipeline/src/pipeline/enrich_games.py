"""
pipeline.enrich_games — Resolve extracted game candidates against IGDB (Twitch).

Reads ``TWITCH_CLIENT_ID`` / ``TWITCH_CLIENT_SECRET`` env vars, exchanges them for an
OAuth2 bearer token, and searches the IGDB v4 API.  Returns match records with
the fields documented below so the loader (current + ticket 06) can write them
to the correct columns on the ``recommendations`` table.

Match record fields
-------------------
candidate_key
    str — the existing ``title|year|media_type`` key from the enrichment artifact.
query_title
    str — extracted title from the LLM (the original query string).
igdb_id
    int — IGDB canonical game ID.
media_type
    str — always ``"game"`` (this module only produces game matches).
title
    str — IGDB ``name`` (canonical game title).
original_title
    str | None — IGDB ``name`` (IGDB has no separate ``original_title`` field).
release_year
    int | None — year extracted from ``first_release_date`` unix timestamp.
poster_url
    str | None — IGDB cover image URL built from ``cover.url`` with ``t_thumb``
    replaced by ``t_cover_big`` (``https://images.igdb.com/igdb/image/upload/t_cover_big/...``).
backdrop_url
    None — IGDB has no direct backdrop equivalent; always ``None``.
overview
    str | None — IGDB ``summary`` field.
popularity
    None — no IGDB analog; always ``None``.
vote_average
    None — no IGDB analog; always ``None``.
imdb_id
    None — no IMDb ID for games in this schema; always ``None``.
external_url
    str | None — ``https://www.igdb.com/games/{slug}``.
platforms
    list[str] | None — platform names from ``platforms[].name``, e.g.
    ``["PC", "PlayStation 5", "Nintendo Switch"]``.
raw_result
    dict — the full IGDB result object (in-memory only, not persisted to DB).
"""

from __future__ import annotations

import os
import time
from datetime import datetime, timezone
from typing import Any

import httpx

_USER_AGENT = "movies-that-feel-like/0.1"
IGDB_AUTH_URL = "https://id.twitch.tv/oauth2/token"
IGDB_BASE_URL = "https://api.igdb.com/v4"

# ── Token cache (module-level, in-memory) ──────────────────────────────

_token: str | None = None
_token_expires_at: float = 0  # time.monotonic() threshold


def _get_token() -> str:
    """Return a valid IGDB bearer token, refreshing if necessary.

    Caches the token in memory.  When the cached token has less than 60
    seconds of life remaining, performs a new client-credentials grant.
    """
    global _token, _token_expires_at

    if _token is not None and time.monotonic() < _token_expires_at:
        return _token

    client_id = os.environ.get("TWITCH_CLIENT_ID")
    client_secret = os.environ.get("TWITCH_CLIENT_SECRET")
    if not client_id or not client_secret:
        raise RuntimeError(
            "TWITCH_CLIENT_ID and TWITCH_CLIENT_SECRET must be set"
        )

    resp = httpx.post(
        IGDB_AUTH_URL,
        params={
            "client_id": client_id,
            "client_secret": client_secret,
            "grant_type": "client_credentials",
        },
        timeout=httpx.Timeout(30),
    )
    resp.raise_for_status()
    data = resp.json()
    _token = data["access_token"]
    expires_in = data.get("expires_in", 5093280)  # ~60 days
    _token_expires_at = time.monotonic() + expires_in - 60  # refresh 60s early
    # At this point _token is guaranteed to be a str
    assert isinstance(_token, str)
    return _token


def _igdb_headers() -> dict[str, str]:
    """Build auth headers for IGDB API requests (fresh token each call)."""
    token = _get_token()
    return {
        "Client-ID": os.environ["TWITCH_CLIENT_ID"],
        "Authorization": f"Bearer {token}",
        "Accept": "application/json",
        "User-Agent": _USER_AGENT,
    }


# ── Search ─────────────────────────────────────────────────────────────


def _search_games(
    client: httpx.Client,
    query: str,
    *,
    language: str = "en-US",
    include_adult: bool = False,
) -> list[dict[str, Any]]:
    """Search IGDB for games matching *query*.

    POSTs to ``/v4/games`` with an Apicalypse body.  The ``language`` and
    ``include_adult`` parameters are accepted for API compatibility with the
    TMDB search helper but have no effect on IGDB.

    If the first request returns 401 (expired token), the token cache is
    invalidated and a single re-auth + retry is attempted.
    """
    body = (
        f'search "{query}";\n'
        f"fields name, first_release_date, cover.url, platforms.name, slug, summary, game_type;\n"
        f"limit 5;\n"
    )

    headers = _igdb_headers()
    resp = client.post(
        f"{IGDB_BASE_URL}/games",
        content=body,
        headers=headers,
    )

    if resp.status_code == 401:
        # Token likely expired — invalidate cache and retry once
        global _token
        _token = None
        headers = _igdb_headers()
        resp = client.post(
            f"{IGDB_BASE_URL}/games",
            content=body,
            headers=headers,
        )

    resp.raise_for_status()
    return resp.json()  # IGDB returns a JSON array (or [])


def _best_match(
    candidate: dict[str, Any],
    results: list[dict[str, Any]],
) -> dict[str, Any] | None:
    """Pick the best IGDB search result for a game candidate.

    Strategy
    --------
    1. Filter to results where ``game_type == 0`` (main_game).
       (``game_type`` is the modern IGDB v4 field; the legacy ``category``
       field is deprecated and returns ``null``.)
    2. If the candidate has a ``year``, prefer results whose
       ``first_release_date`` timestamp falls in the same year.
    3. Fall back to the first main_game result.
    """
    main_games = [r for r in results if r.get("game_type") == 0]
    if not main_games:
        return None

    cand_year = candidate.get("year")
    if cand_year:
        for r in main_games:
            ts = r.get("first_release_date")
            if ts and _ts_to_year(ts) == cand_year:
                return r

    return main_games[0]


# ── Field helpers ──────────────────────────────────────────────────────


def _ts_to_year(ts: int | None) -> int | None:
    """Convert a unix timestamp (seconds) to a year."""
    if ts is None:
        return None
    return datetime.fromtimestamp(ts, tz=timezone.utc).year


def _cover_url(cover: dict[str, Any] | None) -> str | None:
    """Build an IGDB cover image URL at ``t_cover_big`` size.

    IGDB returns protocol-relative URLs::

        //images.igdb.com/igdb/image/upload/t_thumb/{image_id}.jpg

    Prepends ``https:`` and replaces ``t_thumb`` with ``t_cover_big``
    (227x320 px, suitable for card UI).
    """
    if not cover:
        return None
    url = cover.get("url")
    if not url:
        return None
    return f"https:{url.replace('t_thumb', 't_cover_big')}"


def _external_url(slug: str | None) -> str | None:
    """Build an ``https://www.igdb.com/games/{slug}`` URL."""
    if not slug:
        return None
    return f"https://www.igdb.com/games/{slug}"


def _platform_names(result: dict[str, Any]) -> list[str] | None:
    """Extract platform name strings from the result's ``platforms[]`` array."""
    platforms = result.get("platforms")
    if not platforms:
        return None
    names = [p["name"] for p in platforms if isinstance(p, dict) and p.get("name")]
    return names if names else None


# ── Match builder ──────────────────────────────────────────────────────


def build_match(
    candidate: dict[str, Any],
    result: dict[str, Any],
) -> dict[str, Any]:
    """Build a match record dict in the enrichment artifact shape.

    Parameters
    ----------
    candidate
        The candidate dict from ``collect_candidates`` (must have
        ``candidate_key`` and ``title``).
    result
        A single IGDB game result dict (one element of the array returned by
        ``_search_games``, ideally the one chosen by ``_best_match``).

    Returns
    -------
    dict
        Match record with the fields documented in the module docstring.
    """
    release_year = _ts_to_year(result.get("first_release_date"))
    cover = result.get("cover")
    slug = result.get("slug")

    return {
        "candidate_key": candidate["candidate_key"],
        "query_title": candidate["title"],
        "igdb_id": result["id"],
        "media_type": "game",
        "title": result.get("name", ""),
        "original_title": result.get("name"),  # IGDB has no separate original_title
        "release_year": release_year,
        "poster_url": _cover_url(cover),
        "backdrop_url": None,
        "overview": result.get("summary"),
        "popularity": None,
        "vote_average": None,
        "imdb_id": None,
        "external_url": _external_url(slug),
        "platforms": _platform_names(result),
        "raw_result": result,
    }
