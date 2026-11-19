from __future__ import annotations

from typing import Literal

from pydantic import BaseModel, Field


class NormalizedImage(BaseModel):
    """An image reference emitted by normalize; no local/cache byte fields."""

    source_url: str
    preview_url: str | None = None
    preview_width: int | None = None
    preview_height: int | None = None
    sort_order: int = 0
    kind: str = "reddit_source"
    source_post_id: str | None = None


class RecommendationEvidence(BaseModel):
    """A single extracted mention of a recommended movie, series, or video game from a comment."""

    comment_id: str = Field(description="Reddit comment ID where the mention was found")
    comment_text: str | None = Field(default=None, description="Full body text of the comment")
    extracted_text: str = Field(description="Raw text that triggered the match")
    score: int | None = Field(default=None, description="Upvote score of the comment")
    permalink: str | None = Field(default=None, description="Permalink to the comment")


class ExtractedRecommendation(BaseModel):
    """A candidate movie, series, or video game extracted from a post's discussion."""

    title: str = Field(description="Canonical or guessed title of the recommended movie/series/game")
    year: int | None = Field(default=None, description="Release year if resolved")
    media_type: Literal["movie", "tv", "game", "unknown"] = Field(
        default="unknown",
        description="Type of media identified: movie, TV series, video game, or unknown",
    )
    evidence: list[RecommendationEvidence] = Field(default_factory=list)
    confidence: float | None = Field(
        default=None, description="Overall confidence score for this recommendation"
    )


class VibeSummary(BaseModel):
    """A short generated description of the feeling expressed by an imported vibe post."""

    summary: str = Field(description="One or two sentence vibe summary")
    tags: list[str] = Field(
        default_factory=list,
        description="Short descriptive tags (e.g. 'cozy', 'mind-bending')",
    )


class PostExtraction(BaseModel):
    """Full extraction output for a single imported vibe post."""

    reddit_post_id: str
    reddit_title: str = Field(default="")
    cleaned_title: str = Field(default="")
    recommendations: list[ExtractedRecommendation] = Field(default_factory=list)
    vibe: VibeSummary = Field(
        default_factory=lambda: VibeSummary(summary="", tags=[])
    )
    extraction_notes: list[str] = Field(
        default_factory=list, description="Warnings or observations from extraction"
    )
    # Games site only: the game the post wants things to feel like. None on
    # movies and on games posts that name no game.
    reference_title: str | None = None
    reference_year: int | None = None
    # Games site only: False for posts that are not asking for games that
    # feel like something (self-promotion, showcases); load never publishes
    # them. Defaults True so cached rows without the field still validate.
    is_request: bool = True


class BatchEvidence(BaseModel):
    comment_id: str = Field(description="Exact comment_id of a comment listed under the same post")
    extracted_text: str = Field(description="Words in that comment naming the recommendation")


class BatchRecommendation(BaseModel):
    title: str
    year: int | None = None
    media_type: Literal["movie", "tv", "game", "unknown"] = "unknown"
    evidence: list[BatchEvidence] = Field(default_factory=list)
    confidence: float | None = None


class BatchPostExtraction(BaseModel):
    reddit_post_id: str
    cleaned_title: str = ""
    recommendations: list[BatchRecommendation] = Field(default_factory=list)
    vibe: VibeSummary
    extraction_notes: list[str] = Field(default_factory=list)


class BatchExtractionResponse(BaseModel):
    posts: list[BatchPostExtraction]


class GamesBatchPostExtraction(BatchPostExtraction):
    reference_title: str | None = Field(
        default=None, description="The game this post wants others to feel like, or null if none")
    reference_year: int | None = None
    is_request: bool = Field(
        default=True,
        description="False if the post is not asking for games that feel like something, "
        "e.g. self-promotion or a mod or screenshot showcase")


class GamesBatchExtractionResponse(BaseModel):
    """The games site's response schema; the movies schema (and its cache keys) is unchanged."""

    posts: list[GamesBatchPostExtraction]


def batch_response_model() -> type[BatchExtractionResponse] | type[GamesBatchExtractionResponse]:
    """Return the batch response schema for the current site."""
    from pipeline.sites import current_site

    return GamesBatchExtractionResponse if current_site().key == "games" else BatchExtractionResponse
