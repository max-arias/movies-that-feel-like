/**
 * Canonical URL shapes for the feed.
 *
 * The unfiltered feed lives at `/` and `/page/<n>/`; a tag lives at
 * `/tag/<slug>/` and `/tag/<slug>/page/<n>/`. A page-1 href never carries a
 * `/page/1/` suffix, so each page has exactly one URL.
 *
 * Slugs are deterministic and collision-free: `t-` followed by the lowercase
 * hex of the tag's UTF-8 bytes. That is the value SQLite computes for the
 * `tag_counts.slug` column as `'t-' || lower(hex(cast(tag as blob)))`, so the
 * two sides agree for ASCII, emoji, and any Unicode a tag can carry — hex
 * cannot collide with another tag's hex, and it is slash- and space-safe in a
 * path segment.
 */

const utf8 = new TextEncoder();

/** The URL slug of `tag`; identical to `tag_counts.slug` in the database. */
export function tagSlug(tag: string): string {
  let hex = "";
  for (const byte of utf8.encode(tag)) hex += byte.toString(16).padStart(2, "0");
  return `t-${hex}`;
}

/**
 * The canonical href for one feed page. `null` is the unfiltered feed, which
 * is also what a `FeedPage` reports as its `selectedTag`; anything else is a
 * real tag name, including a tag literally named "all".
 */
export function feedHref(tag: string | null, page = 1): string {
  const root = tag === null ? "/" : `/tag/${tagSlug(tag)}/`;
  if (!Number.isSafeInteger(page) || page <= 1) return root;
  return `${root}page/${page}/`;
}
