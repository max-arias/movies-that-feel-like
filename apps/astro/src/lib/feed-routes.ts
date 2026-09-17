/**
 * The feed's URL vocabulary beyond the hrefs in `feed-paths.ts`: which feed
 * URLs the build prerenders, what each one is called, and how a requested URL
 * — or the legacy `?tag=` / `?page=` query — decomposes into the arguments
 * `loadFeed` takes.
 *
 * Read together with `feed-paths.ts`, a link and the route that answers it
 * cannot disagree: the paths parsed here are exactly the paths that file
 * generates.
 */

import { PAGE_SIZE, loadFeed, loadTagBySlug, loadTagCounts, type FeedPage } from "./db/queries";
import { feedHref, tagSlug } from "./feed-paths";
import type { Db } from "./db";

/** Page 1 (`/`) plus pages 2..this are prerendered; deeper pages render on demand. */
export const STATIC_FEED_PAGES = 5;

/** Tag feeds with at least this many posts are prerendered; smaller tags render on demand. */
export const STATIC_TAG_MIN_POSTS = 10;

export type FeedRequest = {
  /** A tag name or a slug; null is the unfiltered feed. */
  tag: string | null;
  page: number;
  /** Whether the URL spelled the page out, so a page-1 URL can be folded back. */
  explicitPage: boolean;
};

/** A feed URL tail: "", "page/2", "tag/<slug>", "tag/<slug>/page/3". */
const FEED_PATH = /^(?:page\/(\d+)|tag\/([^/]+)(?:\/page\/(\d+))?)$/;

/**
 * Decomposes the tail of a feed URL — everything a root-level `[...feed]`
 * route captures. Anything else (`/posts/…`, `/tags/`, a typo, a deeper path)
 * is not a feed and returns null so the caller can answer 404.
 */
export function parseFeedPath(rest: string | undefined): FeedRequest | null {
  if (rest === undefined || rest === "") return { tag: null, page: 1, explicitPage: false };

  const match = FEED_PATH.exec(rest);
  if (!match) return null;

  const barePage = match[1];
  const slug = match[2];
  const tagPage = match[3];
  if (barePage !== undefined) {
    const page = Number(barePage);
    return { tag: null, page: Number.isSafeInteger(page) && page > 0 ? page : 1, explicitPage: true };
  }

  const page = tagPage === undefined ? 1 : Number(tagPage);
  return {
    tag: slug ?? null,
    page: Number.isSafeInteger(page) && page > 0 ? page : 1,
    explicitPage: tagPage !== undefined,
  };
}

/**
 * Reads the legacy `?tag=<name>&page=<n>` feed query the pre-slug site linked
 * with, so the root can redirect it to a canonical path. Returns null when
 * neither param is present — there is nothing to canonicalise, and the request
 * is served as it is. An absent, empty, or malformed page is page 1; an empty
 * tag is no tag at all.
 */
export function parseLegacyFeedQuery(params: URLSearchParams): FeedRequest | null {
  const tag = params.get("tag");
  const page = params.get("page");
  if (tag === null && page === null) return null;

  const parsed = page !== null && /^\d+$/.test(page) ? Number(page) : 1;
  return {
    tag: tag ? tag : null,
    page: Number.isSafeInteger(parsed) && parsed > 0 ? parsed : 1,
    explicitPage: page !== null,
  };
}

export function feedTitle(page: FeedPage): string {
  const base = page.selectedTag
    ? `${page.selectedTag} — Movies That Feel Like`
    : "Movies That Feel Like — a visual discovery index";
  return page.currentPage > 1 ? `${base} (page ${page.currentPage})` : base;
}

export function feedDescription(page: FeedPage): string {
  return page.selectedTag
    ? `Movies that feel like ${page.selectedTag}, from the imagery and discussion of r/MoviesThatFeelLike.`
    : "Discover movies that match the feeling of the stories, places, and moments you love.";
}

/** Pages 2..min(pageCount, STATIC_FEED_PAGES): the unfiltered feed is capped. */
export function staticFeedPages(pageCount: number): number[] {
  const last = Math.min(pageCount, STATIC_FEED_PAGES);
  return Array.from({ length: Math.max(0, last - 1) }, (_, index) => index + 2);
}

/** Every page after the first: a prerendered tag's whole feed is prerendered. */
export function staticTagPages(pageCount: number): number[] {
  return Array.from({ length: Math.max(0, pageCount - 1) }, (_, index) => index + 2);
}

/**
 * The tags whose feed pages the build prerenders, each with the pages that
 * follow page 1. Read from the tag summary at build time, so the prerendered
 * set is exactly the vocabulary that is large enough to deserve it.
 */
export async function loadStaticTags(db: Db): Promise<{ slug: string; pages: number[] }[]> {
  const tags = await loadTagCounts(db);
  return tags
    .filter(({ count }) => count >= STATIC_TAG_MIN_POSTS)
    .map(({ slug, count }) => ({ slug, pages: staticTagPages(Math.ceil(count / PAGE_SIZE)) }));
}

export type OnDemandFeed =
  | { kind: "feed"; page: FeedPage }
  | { kind: "redirect"; location: string }
  | { kind: "missing" };

/**
 * Resolves one on-demand feed URL — the tail the feed route captured — into the
 * page to render, the canonical URL to send the visitor to, or nothing at all.
 *
 * These are the one-URL-per-page rules: page 1 has no `/page/1/` form of its
 * own, a page past the end of its feed is the last page under its canonical
 * URL, and a slug no tag answers is not a feed — never another tag's posts.
 */
export async function resolveOnDemandFeed(db: Db, tail: string): Promise<OnDemandFeed> {
  const request = parseFeedPath(tail);
  if (!request) return { kind: "missing" };

  const tag = request.tag === null ? null : await loadTagBySlug(db, request.tag);
  if (request.tag !== null && !tag) return { kind: "missing" };

  const page = await loadFeed(db, tag?.tag ?? null, request.page);
  if ((request.explicitPage && page.currentPage === 1) || request.page > page.pageCount) {
    return {
      kind: "redirect",
      location: feedHref(page.selectedTag, Math.min(request.page, page.pageCount)),
    };
  }

  return { kind: "feed", page };
}

/**
 * The canonical path for a legacy `/?tag=<name>&page=<n>` root, or null when the
 * URL carries no legacy query and should be served as it is.
 *
 * This is the root's redirect rule, kept here rather than in a route because a
 * prerendered `/` is answered by the asset store before any Astro route can see
 * the request: the worker entry that fronts the root (see `main` in
 * `wrangler.jsonc`) asks this function first and only then hands the request on.
 * `tag` was the raw tag name, so it is slugged to look the tag up; a name no tag
 * answers has no filter left to keep, so the front page is the honest target.
 * The page number is clamped to the feed's last page, so a stale link lands on
 * real posts instead of a 404.
 */
export async function legacyRootRedirect(db: Db, url: URL): Promise<string | null> {
  const legacy = parseLegacyFeedQuery(url.searchParams);
  if (!legacy) return null;

  if (legacy.tag !== null) {
    const tag = await loadTagBySlug(db, tagSlug(legacy.tag));
    if (!tag) return feedHref(null);
    const pageCount = Math.max(1, Math.ceil(tag.count / PAGE_SIZE));
    return feedHref(tag.tag, Math.min(legacy.page, pageCount));
  }

  const { pageCount } = await loadFeed(db, null, legacy.page);
  return feedHref(null, Math.min(legacy.page, pageCount));
}
