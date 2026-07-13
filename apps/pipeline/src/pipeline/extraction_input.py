"""
pipeline.extraction_input — Build extraction prompts from normalized posts
and their comment trees.

Intentionally free of any LLM-provider imports so the caller can plug in
Instructor, OpenAI, or any other client.
"""

from __future__ import annotations

from typing import Any


# ── Comment tree flattening ──────────────────────────────────────────


def _flatten_replies(
    children: list[dict[str, Any]],
    *,
    depth: int = 0,
    max_depth: int = 6,
) -> list[dict[str, Any]]:
    """Recursively flatten a Reddit comment tree into a linear list.

    *children* is a list of ``{"kind": "t1", "data": {...}}`` dicts as
    returned by the Arctic Shift ``get_comment_tree`` response.

    Set *max_depth* to limit recursion (default 6).
    """
    flat: list[dict[str, Any]] = []
    if depth > max_depth:
        return flat

    for child in children:
        if not isinstance(child, dict) or child.get("kind") != "t1":
            continue
        data = child.get("data") or {}
        flat.append(data)
        replies = data.get("replies")
        # replies may be a dict {"data": {"children": [...]}} or an
        # empty string when there are no replies.
        if isinstance(replies, dict):
            nested_children = (
                replies.get("data", {}).get("children") or []
            )
            flat.extend(
                _flatten_replies(
                    nested_children, depth=depth + 1, max_depth=max_depth
                )
            )
    return flat


def flatten_comments(
    comments_by_post: dict[str, Any],
    post_id: str,
    *,
    max_comments: int = 80,
) -> list[dict[str, Any]]:
    """Flatten and filter comments for *post_id* from the raw comment tree.

    Returns a list of comment dicts with keys:
    ``id``, ``body``, ``score``, ``permalink``, ``author``.
    """
    raw_tree = comments_by_post.get(f"t3_{post_id}")
    if raw_tree is None:
        return []

    # Arctic Shift returns {"data": [...]}
    if isinstance(raw_tree, dict) and "data" in raw_tree:
        children = raw_tree["data"]
    elif isinstance(raw_tree, list):
        children = raw_tree
    else:
        # error placeholder
        return []

    all_comments = _flatten_replies(children)

    # Filter out unwanted entries
    filtered: list[dict[str, Any]] = []
    for c in all_comments:
        body = (c.get("body") or "").strip()
        author = (c.get("author") or "").lower()

        # Skip deleted / removed
        if body in ("[deleted]", "[removed]", ""):
            continue
        # Skip AutoModerator
        if author == "automoderator":
            continue

        filtered.append(
            {
                "id": c.get("id", "?"),
                "body": body,
                "score": c.get("score"),
                "permalink": c.get("permalink", ""),
                "author": c.get("author", ""),
            }
        )

    return filtered[:max_comments]


# ── Prompt builder ───────────────────────────────────────────────────


SYSTEM_INSTRUCTION = (
    "Your task is to extract concrete movie and TV series titles that "
    "commenters recommend in response to an image-based Reddit post.\n\n"
    "Rules:\n"
    "- Extract only concrete movie/series titles clearly recommended by commenters.\n"
    "- Do NOT attempt image analysis or describe the images themselves.\n"
    "- Generate a vibe summary (one or two sentences plus 2-5 tags) from the post "
    "title, selftext (if any), and the overall tone of comments.\n"
    "- If a title is ambiguous or could refer to multiple works, note that in "
    "extraction_notes but still include it.\n"
    "- For each recommendation include: the title, the media type (movie/tv/unknown), "
    "the comment(s) that mentioned it as evidence, and your confidence.\n"
    "- Ignore the post author's own text as a recommendation — only use commenter suggestions."
)


def build_extraction_prompt(
    post: dict[str, Any],
    comments: list[dict[str, Any]],
    *,
    max_comments: int = 80,
) -> dict[str, Any]:
    """Build prompt components for a single normalized post.

    Returns a dict with ``system_prompt`` and ``user_prompt`` strings
    that can be passed directly to an LLM chat completion.
    """
    title = post.get("title", "(no title)")
    selftext = post.get("selftext", "") or ""
    post_id = post.get("reddit_post_id", "?")

    parts: list[str] = [
        f"## Post\n",
        f"- **ID**: {post_id}",
        f"- **Title**: {title}",
    ]
    if selftext.strip():
        # only include first 1 000 chars to keep prompt focused
        truncated = selftext.strip()[:1000]
        parts.append(f"- **Selftext**:\n{truncated}")

    parts.append(f"\n## Comments ({len(comments)} shown, max {max_comments})")

    for i, c in enumerate(comments, start=1):
        body = c.get("body", "")
        # Truncate very long comments
        if len(body) > 500:
            body = body[:500] + " […]"
        parts.append(
            f"{i}. [comment {c['id']}, score {c.get('score', '?')}] {body}"
        )

    user_prompt = "\n".join(parts)

    return {
        "system_prompt": SYSTEM_INSTRUCTION.strip(),
        "user_prompt": user_prompt.strip(),
    }
