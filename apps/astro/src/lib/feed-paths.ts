/**
 * Canonical URL shapes for the feed.
 *
 * The unfiltered feed lives at `/` and `/page/<n>/`; a tag lives at
 * `/tag/<slug>/` and `/tag/<slug>/page/<n>/`. A page-1 href never carries a
 * `/page/1/` suffix, so each page has exactly one URL.
 *
 * Tag names are URL-encoded as path segments, keeping ordinary names readable
 * while preserving spaces, punctuation, and Unicode without path collisions.
 */

/** The URL path segment for `tag`. */
export function tagSlug(tag: string): string {
  return encodeURIComponent(tag);
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
