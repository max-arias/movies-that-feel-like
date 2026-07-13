from __future__ import annotations

from typing import Literal

from pydantic import BaseModel, Field


class RecommendationEvidence(BaseModel):
    """A single extracted mention of a recommended movie or series from a comment."""

    comment_id: str = Field(description="Reddit comment ID where the mention was found")
    comment_text: str | None = Field(default=None, description="Full body text of the comment")
    extracted_text: str = Field(description="Raw text that triggered the match")
    score: int | None = Field(default=None, description="Upvote score of the comment")
    permalink: str | None = Field(default=None, description="Permalink to the comment")


class ExtractedRecommendation(BaseModel):
    """A candidate movie or series extracted from a post's discussion."""

    title: str = Field(description="Canonical or guessed title of the recommended movie/series")
    year: int | None = Field(default=None, description="Release year if resolved")
    media_type: Literal["movie", "tv", "unknown"] = Field(
        default="unknown", description="Type of media identified"
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
