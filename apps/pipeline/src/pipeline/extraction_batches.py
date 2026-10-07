"""
pipeline.extraction_batches — Pack per-post extraction prompts into multi-post
requests and map a batch response back onto individual posts.

Pure functions only: no provider imports. Batch composition never affects the
per-post cache identity; it only decides how many posts share one request.
"""

from __future__ import annotations

from dataclasses import dataclass, field
from typing import Any

from pipeline.models import BatchExtractionResponse, BatchPostExtraction, PostExtraction


@dataclass(frozen=True)
class BatchPost:
    ordinal: int
    reddit_post_id: str
    title: str
    user_prompt: str
    comments: dict[str, dict[str, Any]]  # comment id -> {"body","score","permalink"}


@dataclass
class BatchResolution:
    results: dict[int, dict[str, Any]] = field(default_factory=dict)
    omitted: list[BatchPost] = field(default_factory=list)
    dropped_evidence: int = 0


def batch_post_from_prompt(prompt: dict[str, Any]) -> BatchPost:
    """Build a :class:`BatchPost` from an entry produced by ``extract._build_prompts``."""
    prompt_input = prompt.get("prompt_input") or {}
    comments: dict[str, dict[str, Any]] = {}
    for comment in prompt_input.get("comments") or []:
        comment_id = str(comment.get("id", ""))
        if comment_id in comments:
            continue
        comments[comment_id] = {"body": comment.get("body"), "score": comment.get("score"),
                                "permalink": comment.get("permalink")}
    return BatchPost(
        ordinal=prompt["ordinal"],
        reddit_post_id=prompt["reddit_post_id"],
        title=(prompt_input.get("post") or {}).get("title") or "",
        user_prompt=prompt["user_prompt"],
        comments=comments,
    )


def pack_batches(posts: list[BatchPost], *, max_posts: int, max_chars: int) -> list[list[BatchPost]]:
    """Greedily pack *posts* in order; an oversized post becomes its own batch."""
    batches: list[list[BatchPost]] = []
    current: list[BatchPost] = []
    chars = 0
    for post in posts:
        size = len(post.user_prompt)
        if current and (len(current) >= max_posts or chars + size > max_chars):
            batches.append(current)
            current, chars = [], 0
        current.append(post)
        chars += size
    if current:
        batches.append(current)
    return batches


def render_batch_prompt(batch: list[BatchPost]) -> str:
    blocks = [
        f'<post index="{index}" reddit_post_id="{post.reddit_post_id}">\n{post.user_prompt}\n</post>'
        for index, post in enumerate(batch, 1)
    ]
    return f"Extract each of the following {len(batch)} posts independently.\n\n" + "\n\n".join(blocks)


def _to_post_extraction(post: BatchPost, entry: BatchPostExtraction) -> tuple[dict[str, Any], int]:
    """Convert one response entry, keeping only evidence citing this post's comments."""
    dropped = 0
    recommendations: list[dict[str, Any]] = []
    for rec in entry.recommendations:
        evidence = []
        for item in rec.evidence:
            comment = post.comments.get(item.comment_id)
            if comment is None:
                dropped += 1
                continue
            evidence.append({"comment_id": item.comment_id, "comment_text": comment["body"],
                             "extracted_text": item.extracted_text, "score": comment["score"],
                             "permalink": comment["permalink"]})
        # Evidence that all pointed elsewhere signals cross-post contamination.
        if rec.evidence and not evidence:
            continue
        recommendations.append({"title": rec.title, "year": rec.year, "media_type": rec.media_type,
                                "evidence": evidence, "confidence": rec.confidence})
    extraction = PostExtraction(
        reddit_post_id=post.reddit_post_id, reddit_title=post.title,
        cleaned_title=entry.cleaned_title, recommendations=recommendations,
        vibe=entry.vibe, extraction_notes=entry.extraction_notes,
    )
    return extraction.model_dump(), dropped


def resolve_batch_response(batch: list[BatchPost], response: BatchExtractionResponse) -> BatchResolution:
    """Map response entries onto batch posts by ``reddit_post_id``."""
    matches: dict[str, list[BatchPostExtraction]] = {post.reddit_post_id: [] for post in batch}
    for entry in response.posts:
        if entry.reddit_post_id in matches:
            matches[entry.reddit_post_id].append(entry)
    resolution = BatchResolution()
    for post in batch:
        entries = matches[post.reddit_post_id]
        if len(entries) != 1:
            resolution.omitted.append(post)
            continue
        result, dropped = _to_post_extraction(post, entries[0])
        resolution.results[post.ordinal] = result
        resolution.dropped_evidence += dropped
    return resolution
