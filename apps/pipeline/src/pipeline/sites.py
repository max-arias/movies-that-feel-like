"""
pipeline.sites — Which site a pipeline run serves.

The monorepo hosts two sites built from the same pipeline:

* ``movies`` — r/MoviesThatFeelLike (default; movies, series and games).
* ``games``  — r/GamesThatFeelLike (games only, enriched through IGDB).

Select one with the ``SITE`` environment variable (the same variable the
Astro app reads), e.g. ``SITE=games npm run pipeline:fetch``. Unset means
``movies``, so existing commands and artifacts keep working unchanged.
"""

from __future__ import annotations

import os
from dataclasses import dataclass


@dataclass(frozen=True)
class Site:
    key: str
    subreddit: str
    # Sub-directory of ``data/`` holding this site's artifacts; ``""`` is
    # ``data/`` itself, where the movies artifacts have always lived.
    data_subdir: str
    # Repo-relative directory the loader writes generated data migrations to.
    migrations_dir: str
    # Media types this site publishes; enrichment skips the rest.
    media_types: tuple[str, ...]
    # Whether the post's Reddit flair is part of the extraction prompt.
    include_flair: bool


SITES: dict[str, Site] = {
    "movies": Site(
        key="movies",
        subreddit="MoviesThatFeelLike",
        data_subdir="",
        migrations_dir="packages/db/migrations",
        media_types=("movie", "tv", "game"),
        include_flair=False,
    ),
    "games": Site(
        key="games",
        subreddit="GamesThatFeelLike",
        data_subdir="games",
        migrations_dir="packages/db/migrations-games",
        media_types=("game",),
        include_flair=True,
    ),
}


def current_site() -> Site:
    """Return the site selected by ``SITE`` (default ``movies``)."""
    key = (os.environ.get("SITE") or "movies").strip().lower()
    try:
        return SITES[key]
    except KeyError:
        raise SystemExit(
            f"[pipeline] Unknown SITE={key!r}; expected one of: {', '.join(SITES)}"
        ) from None
