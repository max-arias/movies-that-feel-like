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

import asyncio
import os
import re
import time as time_module
import unicodedata
from datetime import datetime, timezone
from typing import Any

import httpx

_USER_AGENT = "movies-that-feel-like/0.1"
IGDB_AUTH_URL = "https://id.twitch.tv/oauth2/token"
IGDB_BASE_URL = "https://api.igdb.com/v4"

# ── Token cache (module-level, in-memory) ──────────────────────────────

_token: str | None = None
_token_expires_at: float = 0  # time.monotonic() threshold
_token_lock = asyncio.Lock()


def _get_token() -> str:
    """Return a valid IGDB bearer token, refreshing if necessary.

    Caches the token in memory.  When the cached token has less than 60
    seconds of life remaining, performs a new client-credentials grant.
    """
    global _token, _token_expires_at

    if _token is not None and time_module.monotonic() < _token_expires_at:
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
    _token_expires_at = time_module.monotonic() + expires_in - 60  # refresh 60s early
    # At this point _token is guaranteed to be a str
    assert isinstance(_token, str)
    return _token


async def _get_token_async() -> str:
    """Async variant of :func:`_get_token` with lock-guarded re-auth.

    Uses ``asyncio.Lock`` to prevent concurrent tasks from both triggering
    a token refresh.
    """
    global _token, _token_expires_at

    # Fast check outside lock
    if _token is not None and time_module.monotonic() < _token_expires_at:
        return _token

    async with _token_lock:
        # Double-check inside lock
        if _token is not None and time_module.monotonic() < _token_expires_at:
            return _token

        client_id = os.environ.get("TWITCH_CLIENT_ID")
        client_secret = os.environ.get("TWITCH_CLIENT_SECRET")
        if not client_id or not client_secret:
            raise RuntimeError(
                "TWITCH_CLIENT_ID and TWITCH_CLIENT_SECRET must be set"
            )

        resp = await asyncio.to_thread(
            httpx.post,
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
        expires_in = data.get("expires_in", 5093280)
        _token_expires_at = time_module.monotonic() + expires_in - 60
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


async def _igdb_headers_async() -> dict[str, str]:
    """Async variant of :func:`_igdb_headers`."""
    token = await _get_token_async()
    return {
        "Client-ID": os.environ["TWITCH_CLIENT_ID"],
        "Authorization": f"Bearer {token}",
        "Accept": "application/json",
        "User-Agent": _USER_AGENT,
    }


# ── Search ─────────────────────────────────────────────────────────────


# artworks/screenshots give a wide backdrop; total_rating is IGDB's 0-100
# critic+user score, stored /10 to match the shared vote_average scale.
# alternative_names / version_parent feed _best_match's ranking only.
_SEARCH_FIELDS = (
    "name, first_release_date, cover.url, platforms.name, slug, summary, game_type, "
    "artworks.image_id, screenshots.image_id, total_rating, total_rating_count, "
    "alternative_names.name, version_parent"
)
# IGDB's relevance order puts spin-offs and editions ahead of the canonical
# entry often enough that 5 results missed it; _best_match re-ranks anyway.
_SEARCH_LIMIT = 20


def _backdrop_url(result: dict[str, Any]) -> str | None:
    """Return a 1080p IGDB artwork (or screenshot) URL, if the game has one."""
    for field in ("artworks", "screenshots"):
        for image in result.get(field) or []:
            image_id = image.get("image_id") if isinstance(image, dict) else None
            if image_id:
                return f"https://images.igdb.com/igdb/image/upload/t_1080p/{image_id}.jpg"
    return None


def _rating(result: dict[str, Any]) -> float | None:
    """Return IGDB ``total_rating`` (0-100) as a 0-10 score, rounded to 0.1."""
    rating = result.get("total_rating")
    if not isinstance(rating, (int, float)) or isinstance(rating, bool):
        return None
    return round(rating / 10, 1)


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
        f"fields {_SEARCH_FIELDS};\n"
        f"limit {_SEARCH_LIMIT};\n"
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


async def _search_games_async(
    client: httpx.AsyncClient,
    query: str,
    *,
    language: str = "en-US",
    include_adult: bool = False,
) -> list[dict[str, Any]]:
    """Async variant of :func:`_search_games`."""
    body = (
        f'search "{query}";\n'
        f"fields {_SEARCH_FIELDS};\n"
        f"limit {_SEARCH_LIMIT};\n"
    )

    headers = await _igdb_headers_async()
    resp = await client.post(
        f"{IGDB_BASE_URL}/games",
        content=body,
        headers=headers,
    )

    if resp.status_code == 401:
        # Token likely expired — invalidate cache and retry once
        global _token
        _token = None
        headers = await _igdb_headers_async()
        resp = await client.post(
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

    Results are ranked by, in order:

    1. Title match on normalized names (:func:`_normalize_title`): the
       ``name`` equals the query, then an ``alternative_names`` entry equals
       it, then one contains the other.  An exact title beats a spin-off
       whose name merely contains it ("Elden Ring" over "Elden Ring
       Nightreign").
    2. ``game_type`` (the IGDB v4 field; ``category`` is deprecated): main
       game, remake, remaster and expanded game first, then expansions, then
       DLC, bundles, ports, mods, episodes, packs, updates, seasons, forks.
    3. Not an edition of another game (no ``version_parent``).
    4. ``first_release_date`` year equal to the candidate's year, then
       within one year of it (only when the candidate has a year).
    5. Has a cover, then has artworks or screenshots.
    6. Higher ``total_rating_count``, then IGDB's own search order.

    Results with no title relation are kept only if they are a preferred
    ``game_type``; if nothing qualifies, returns ``None``.
    """
    query = _normalize_title(candidate.get("title"))
    cand_year = candidate.get("year")

    best: dict[str, Any] | None = None
    best_key: tuple | None = None
    for index, result in enumerate(results):
        if not isinstance(result, dict) or "id" not in result:
            continue
        title_rank = _title_rank(query, result)
        type_rank = _GAME_TYPE_RANK.get(result.get("game_type"), 0)
        if title_rank == 0 and type_rank < _PREFERRED_TYPE_RANK:
            continue
        key = (
            title_rank,
            type_rank,
            not result.get("version_parent"),
            _year_rank(cand_year, result.get("first_release_date")),
            bool(_cover_url(result.get("cover"))),
            _backdrop_url(result) is not None,
            _rating_count(result),
            -index,
        )
        if best_key is None or key > best_key:
            best, best_key = result, key
    return best


# IGDB game_types ids (same values as the deprecated ``category`` enum):
# 0 main_game, 1 dlc_addon, 2 expansion, 3 bundle, 4 standalone_expansion,
# 5 mod, 6 episode, 7 season, 8 remake, 9 remaster, 10 expanded_game,
# 11 port, 12 fork, 13 pack, 14 update.  Unlisted/missing ids rank 0.
_PREFERRED_TYPE_RANK = 3
_GAME_TYPE_RANK: dict[Any, int] = {
    0: 3, 8: 3, 9: 3, 10: 3,
    2: 2, 4: 2,
    1: 1, 3: 1, 5: 1, 6: 1, 7: 1, 11: 1, 12: 1, 13: 1, 14: 1,
}

_ROMAN_NUMERALS = {
    # "i" and "x" are left alone: too often a word or letter ("Mega Man X"
    # must not equal "Mega Man 10").
    "ii": "2", "iii": "3", "iv": "4", "v": "5", "vi": "6", "vii": "7",
    "viii": "8", "ix": "9", "xi": "11", "xii": "12", "xiii": "13",
    "xiv": "14", "xv": "15", "xvi": "16", "xvii": "17", "xviii": "18",
    "xix": "19", "xx": "20",
}


def _normalize_title(value: Any) -> str:
    """Normalize a game title for comparison.

    Lowercases, strips diacritics and trademark symbols, treats ``&`` as
    "and", turns punctuation into spaces, maps roman numerals II–XX to
    digits and drops a leading "the".
    """
    # Drop trademark symbols first: NFKD would expand "™" into "TM".
    text = re.sub(r"[™®©℠]", "", str(value or ""))
    text = unicodedata.normalize("NFKD", text)
    text = "".join(ch for ch in text if not unicodedata.combining(ch))
    text = text.lower().replace("&", " and ")
    text = re.sub(r"[^\w\s]|_", " ", text)
    tokens = [_ROMAN_NUMERALS.get(tok, tok) for tok in text.split()]
    if len(tokens) > 1 and tokens[0] == "the":
        tokens = tokens[1:]
    return " ".join(tokens)


def _title_rank(query: str, result: dict[str, Any]) -> int:
    """3 exact name, 2 exact alternative name, 1 containment, 0 otherwise."""
    if not query:
        return 0
    name = _normalize_title(result.get("name"))
    if name == query:
        return 3
    alternatives = [
        _normalize_title(alt.get("name"))
        for alt in result.get("alternative_names") or []
        if isinstance(alt, dict)
    ]
    if query in alternatives:
        return 2
    padded_query = f" {query} "
    for other in (name, *alternatives):
        if other and (padded_query in f" {other} " or f" {other} " in padded_query):
            return 1
    return 0


def _year_rank(cand_year: Any, ts: Any) -> int:
    """2 same year, 1 within one year, 0 otherwise or without a year hint."""
    if isinstance(cand_year, str) and cand_year.strip().isdigit():
        cand_year = int(cand_year)
    if not isinstance(cand_year, int) or isinstance(cand_year, bool) or not isinstance(ts, (int, float)):
        return 0
    diff = abs(datetime.fromtimestamp(ts, tz=timezone.utc).year - cand_year)
    return 2 if diff == 0 else 1 if diff == 1 else 0


def _rating_count(result: dict[str, Any]) -> int:
    count = result.get("total_rating_count")
    return count if isinstance(count, int) and not isinstance(count, bool) else 0


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
        "backdrop_url": _backdrop_url(result),
        "overview": result.get("summary"),
        "popularity": None,
        "vote_average": _rating(result),
        "imdb_id": None,
        "external_url": _external_url(slug),
        "platforms": _platform_names(result),
        "raw_result": result,
    }
