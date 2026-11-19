/** Runtime queries backing the feed and the post detail pages. */

import { and, asc, desc, eq, gt, inArray, isNotNull, isNull, or, sql, type SQL } from "drizzle-orm";
import {
  importedPostImages,
  importedVibePosts,
  recommendationEvidence,
  recommendations,
  siteStats,
  tagCounts as tagCountsTable,
  vibeTags,
} from "db/schema";
import { site } from "../../site";
import type { Db } from ".";

export const PAGE_SIZE = 25;

/** The feed sidebar renders this many tag links; every tag lives on /tags. */
const FEED_TAG_LIMIT = 150;

export type FeedImage = {
  id: number;
  sourceUrl: string;
  previewUrl: string | null;
  sortOrder: number;
};

/**
 * Games: the game a post wants others to feel like. `igdbId` and the art are
 * null when IGDB had no match; the whole value is null on movies.
 */
export type PostReference = {
  title: string;
  igdbId: number | null;
  posterUrl: string | null;
  backdropUrl: string | null;
  externalUrl: string | null;
};

/**
 * Games: IGDB art standing in as the hero of a post with no live Reddit image:
 * the reference game's, else the post's highest-ranked game that has art.
 */
export type StandInArt = { url: string; title: string };

export type FeedPost = {
  id: number;
  redditPostId: string;
  title: string;
  vibeSummary: string | null;
  images: FeedImage[];
  tags: string[];
  reference: PostReference | null;
  /** Games only, for a post with no images; null there means a typographic hero. */
  standInArt: StandInArt | null;
};

export type TagCount = { tag: string; slug: string; count: number };

export type FeedPage = {
  posts: FeedPost[];
  tagCounts: TagCount[];
  /** The resolved tag, or null for the unfiltered feed. */
  selectedTag: string | null;
  currentPage: number;
  pageCount: number;
};

export type Recommendation = {
  id: number;
  title: string;
  tmdbId: number | null;
  imdbId: string | null;
  igdbId: number | null;
  mediaType: string;
  releaseYear: number | null;
  posterUrl: string | null;
  backdropUrl: string | null;
  overview: string | null;
  externalUrl: string | null;
  platforms: string[] | null;
  popularity: number | null;
  voteAverage: number | null;
  evidenceScore: number;
};

export type PostDetail = {
  id: number;
  redditPostId: string;
  title: string;
  vibeSummary: string | null;
  permalink: string;
  createdUtc: number;
  images: FeedImage[];
  tags: string[];
  recommendations: Recommendation[];
  reference: PostReference | null;
  /** Games only, for a post with no images; null there means a typographic hero. */
  standInArt: StandInArt | null;
};

/**
 * Games shows text-only posts (MTFL-80): a publishable games post, which always
 * has at least one recommendation, is displayed whether or not it owns a live
 * image, and IGDB art (or a typographic hero) stands in for the upload.
 */
const textPostsDisplayable = site.id === "games";

/**
 * The product rule, expressed once: a post is displayable while it owns at
 * least one image Reddit has not deleted. `imported_vibe_posts.is_displayable`
 * is that rule, maintained by triggers for every write path, and the summary
 * tables are counted from it — so the feed reads a flag instead of probing
 * `imported_post_images` once per post, per request.
 *
 * Games drops the image half of the rule. Its triggers, `tag_counts` and
 * `site_stats` still encode the movies rule, so games counts its live posts at
 * request time instead (`liveTagCounts`, `loadSitePostCount`) until a
 * games-only migration redefines `is_displayable` there.
 */
const displayablePost = textPostsDisplayable
  ? eq(importedVibePosts.status, "publishable")
  : and(eq(importedVibePosts.status, "publishable"), eq(importedVibePosts.isDisplayable, true));

const feedPostColumns = {
  id: importedVibePosts.id,
  redditPostId: importedVibePosts.redditPostId,
  title: importedVibePosts.title,
  vibeSummary: importedVibePosts.vibeSummary,
  referenceTitle: importedVibePosts.referenceTitle,
  referenceIgdbId: importedVibePosts.referenceIgdbId,
};

const tagCountColumns = {
  tag: tagCountsTable.tag,
  slug: tagCountsTable.slug,
  count: tagCountsTable.count,
};

type FeedPostRow = {
  id: number;
  redditPostId: string;
  title: string;
  vibeSummary: string | null;
  referenceTitle: string | null;
  referenceIgdbId: number | null;
};

type ReferenceArt = Omit<PostReference, "title" | "igdbId">;

/** IGDB art for posts' reference games, keyed by IGDB id; one query, none on movies. */
async function loadReferenceArt(db: Db, igdbIds: number[]): Promise<Map<number, ReferenceArt>> {
  const art = new Map<number, ReferenceArt>();
  const ids = [...new Set(igdbIds)];
  if (ids.length === 0) return art;
  const rows = await db
    .select({
      igdbId: recommendations.igdbId,
      posterUrl: recommendations.posterUrl,
      backdropUrl: recommendations.backdropUrl,
      externalUrl: recommendations.externalUrl,
    })
    .from(recommendations)
    .where(inArray(recommendations.igdbId, ids));
  for (const { igdbId, ...rest } of rows) if (igdbId != null) art.set(igdbId, rest);
  return art;
}

function toReference(
  title: string | null,
  igdbId: number | null,
  art: Map<number, ReferenceArt>,
): PostReference | null {
  if (!title) return null;
  const found = igdbId == null ? undefined : art.get(igdbId);
  return {
    title,
    igdbId: found ? igdbId : null,
    posterUrl: found?.posterUrl ?? null,
    backdropUrl: found?.backdropUrl ?? null,
    externalUrl: found?.externalUrl ?? null,
  };
}

type ArtSource = { title: string; posterUrl: string | null; backdropUrl: string | null };

/** The wide artwork first: a cover is portrait and crops badly in a hero. */
function artOf(source: ArtSource): StandInArt | null {
  const url = source.backdropUrl ?? source.posterUrl;
  return url ? { url, title: source.title } : null;
}

/**
 * The stand-in hero of an imageless games post: the reference game's art, else
 * the first of the post's games, in ranking order, that has art.
 */
function standInArtFor(reference: PostReference | null, rankedGames: ArtSource[]): StandInArt | null {
  for (const source of reference ? [reference, ...rankedGames] : rankedGames) {
    const art = artOf(source);
    if (art) return art;
  }
  return null;
}

/** Each post's games that have IGDB art, in the post page's ranking order. */
async function loadRankedGameArt(db: Db, postIds: number[]): Promise<Map<number, ArtSource[]>> {
  if (postIds.length === 0) return new Map();
  const rows = await db
    .select({
      postId: recommendationEvidence.importedVibePostId,
      title: recommendations.title,
      posterUrl: recommendations.posterUrl,
      backdropUrl: recommendations.backdropUrl,
    })
    .from(recommendations)
    .innerJoin(recommendationEvidence, eq(recommendationEvidence.recommendationId, recommendations.id))
    .where(
      and(
        inArray(recommendationEvidence.importedVibePostId, postIds),
        eq(recommendations.mediaType, "game"),
        or(isNotNull(recommendations.backdropUrl), isNotNull(recommendations.posterUrl)),
      ),
    )
    .orderBy(desc(recommendations.evidenceScore), desc(recommendations.popularity), asc(recommendations.id));
  return groupBy(rows, (row) => row.postId);
}

function groupBy<T, K>(items: T[], key: (item: T) => K): Map<K, T[]> {
  const groups = new Map<K, T[]>();
  for (const item of items) {
    const group = groups.get(key(item));
    if (group) group.push(item);
    else groups.set(key(item), [item]);
  }
  return groups;
}

/**
 * The tag vocabulary with its displayable-post counts, largest first. Read
 * from the `tag_counts` summary the load stage and the schema's triggers
 * maintain, so this never aggregates `vibe_tags` at request time. Empty tags
 * can stay in the table; they are filtered out here.
 *
 * Without a `limit` this is the complete vocabulary: the /tags index and the
 * static tag pages are built from it.
 */
export async function loadTagCounts(db: Db, limit?: number): Promise<TagCount[]> {
  if (textPostsDisplayable) return liveTagCounts(db, undefined, limit);
  const query = db
    .select(tagCountColumns)
    .from(tagCountsTable)
    .where(gt(tagCountsTable.count, 0))
    .orderBy(desc(tagCountsTable.count), asc(tagCountsTable.tag));

  const rows = limit === undefined ? await query : await query.limit(limit);
  return rows.map(({ tag, slug, count }) => ({ tag, slug, count: Number(count) }));
}

/**
 * One summary row for whatever key the caller indexes by. A tag is only
 * filterable while the summary counts at least one displayable post for it, so
 * an unknown, or emptied, tag reads as null.
 */
async function selectTagCountRow(db: Db, key: SQL): Promise<TagCount | null> {
  if (textPostsDisplayable) return (await liveTagCounts(db, key, 1))[0] ?? null;
  const [row] = await db
    .select(tagCountColumns)
    .from(tagCountsTable)
    .where(and(gt(tagCountsTable.count, 0), key))
    .limit(1);

  return row ? { ...row, count: Number(row.count) } : null;
}

/**
 * The tag a `/tag/<slug>/` path names, or null. The path segment is encoded
 * with `encodeURIComponent`, while the summary stores the original tag name.
 */
export async function loadTagBySlug(db: Db, slug: string): Promise<TagCount | null> {
  let tag = slug;
  try {
    tag = decodeURIComponent(slug);
  } catch {
    // Astro can provide an already-decoded tag containing a literal `%`.
  }
  return selectTagCountRow(db, eq(tagCountsTable.tag, tag));
}

/**
 * Games: the counts `tag_counts` would hold under the games rule, counted from
 * the posts. `tag_counts` still supplies each tag's slug (its vocabulary is
 * complete), and the (post, tag) unique index counts each post once per tag.
 */
async function liveTagCounts(db: Db, key: SQL | undefined, limit: number | undefined): Promise<TagCount[]> {
  const count = sql<number>`count(*)`.mapWith(Number);
  const query = db
    .select({ tag: tagCountsTable.tag, slug: tagCountsTable.slug, count })
    .from(tagCountsTable)
    .innerJoin(vibeTags, eq(vibeTags.tag, tagCountsTable.tag))
    .innerJoin(importedVibePosts, and(eq(importedVibePosts.id, vibeTags.importedVibePostId), displayablePost))
    .where(key)
    .groupBy(tagCountsTable.tag, tagCountsTable.slug)
    .orderBy(desc(count), asc(tagCountsTable.tag));
  return limit === undefined ? query : query.limit(limit);
}

/** Every displayable post on the site, from the singleton summary row. */
async function loadSitePostCount(db: Db): Promise<number> {
  if (textPostsDisplayable) {
    const [row] = await db
      .select({ count: sql<number>`count(*)`.mapWith(Number) })
      .from(importedVibePosts)
      .where(displayablePost);
    return row?.count ?? 0;
  }
  const [row] = await db.select({ postCount: siteStats.postCount }).from(siteStats).limit(1);
  return Number(row?.postCount ?? 0);
}

/**
 * The feed sidebar: the largest tags, plus the selected tag when it ranks
 * below the cutoff so the current filter is always visible and marked.
 */
async function loadSidebarTags(db: Db, selected: TagCount | null): Promise<TagCount[]> {
  const top = await loadTagCounts(db, FEED_TAG_LIMIT);
  if (selected && !top.some(({ tag }) => tag === selected.tag)) top.push(selected);
  return top;
}

async function selectFeedPostRows(db: Db, tag: string | null, offset: number): Promise<FeedPostRow[]> {
  if (tag) {
    // Filtered: drive from tag membership — the (post, tag) unique index hands
    // the planner the tag's posts, and the feed index still serves the order
    // for tags large enough that scanning posts is the cheaper loop.
    return db
      .select(feedPostColumns)
      .from(vibeTags)
      .innerJoin(importedVibePosts, eq(importedVibePosts.id, vibeTags.importedVibePostId))
      .where(and(eq(vibeTags.tag, tag), displayablePost))
      .orderBy(desc(importedVibePosts.createdUtc), desc(importedVibePosts.id))
      .limit(PAGE_SIZE)
      .offset(offset);
  }

  // Unfiltered: the (status, is_displayable, created_utc DESC, id DESC) index
  // serves the filter and the order together.
  return db
    .select(feedPostColumns)
    .from(importedVibePosts)
    .where(displayablePost)
    .orderBy(desc(importedVibePosts.createdUtc), desc(importedVibePosts.id))
    .limit(PAGE_SIZE)
    .offset(offset);
}

async function loadFeedPosts(db: Db, tag: string | null, offset: number): Promise<FeedPost[]> {
  const rows = await selectFeedPostRows(db, tag, offset);

  const ids = rows.map((row) => row.id);
  if (ids.length === 0) return [];

  const [imageRows, tagRows, referenceArt] = await Promise.all([
    db
      .select({
        id: importedPostImages.id,
        importedVibePostId: importedPostImages.importedVibePostId,
        sourceUrl: importedPostImages.sourceUrl,
        previewUrl: importedPostImages.previewUrl,
        sortOrder: importedPostImages.sortOrder,
      })
      .from(importedPostImages)
      .where(and(inArray(importedPostImages.importedVibePostId, ids), isNull(importedPostImages.deletedAt)))
      .orderBy(asc(importedPostImages.sortOrder), asc(importedPostImages.id)),
    db
      .select({ importedVibePostId: vibeTags.importedVibePostId, tag: vibeTags.tag })
      .from(vibeTags)
      .where(inArray(vibeTags.importedVibePostId, ids))
      .orderBy(asc(vibeTags.id)),
    loadReferenceArt(
      db,
      rows.flatMap((row) => (row.referenceIgdbId == null ? [] : [row.referenceIgdbId])),
    ),
  ]);

  const imagesByPost = groupBy(imageRows, (image) => image.importedVibePostId);
  const tagsByPost = groupBy(tagRows, (tag) => tag.importedVibePostId);
  const posts = rows.map((row) => ({
    row,
    images: imagesByPost.get(row.id) ?? [],
    reference: toReference(row.referenceTitle, row.referenceIgdbId, referenceArt),
  }));
  // Games: an imageless post whose reference game has no art falls back to its games' art.
  const rankedGameArt = textPostsDisplayable
    ? await loadRankedGameArt(
        db,
        posts
          .filter(({ images, reference }) => images.length === 0 && !(reference && artOf(reference)))
          .map(({ row }) => row.id),
      )
    : new Map<number, ArtSource[]>();

  return posts.map(({ row, images, reference }) => ({
    id: row.id,
    redditPostId: row.redditPostId,
    title: row.title,
    vibeSummary: row.vibeSummary,
    images: images.map(({ id, sourceUrl, previewUrl, sortOrder }) => ({
      id,
      sourceUrl,
      previewUrl,
      sortOrder,
    })),
    tags: (tagsByPost.get(row.id) ?? []).map(({ tag }) => tag),
    reference,
    standInArt:
      textPostsDisplayable && images.length === 0 ? standInArtFor(reference, rankedGameArt.get(row.id) ?? []) : null,
  }));
}

/**
 * One page of the feed for `?tag=<name>` and `?page=<n>`. `requestedTag` is a
 * tag name, matched exactly; a `/tag/<slug>/` route resolves its slug with
 * `loadTagBySlug` first and passes the returned `tag`, and a pre-slug legacy
 * URL is redirected the same way by computing `tagSlug(name)`. So neither
 * lookup ever has to guess which string it was handed. `selectedTag` comes
 * back as the resolved name, or null for the unfiltered feed — a tag actually
 * named "all" is an ordinary tag. Neither the total nor the sidebar counts are
 * aggregated at request time: they come from the summary tables.
 */
export async function loadFeed(db: Db, requestedTag: string | null, requestedPage: number): Promise<FeedPage> {
  const selected = requestedTag ? await selectTagCountRow(db, eq(tagCountsTable.tag, requestedTag)) : null;
  const tag = selected?.tag ?? null;

  const [total, tagCounts] = await Promise.all([
    selected ? Promise.resolve(selected.count) : loadSitePostCount(db),
    loadSidebarTags(db, selected),
  ]);

  const pageCount = Math.max(1, Math.ceil(total / PAGE_SIZE));
  const currentPage = Math.min(Math.max(requestedPage, 1), pageCount);
  const posts = await loadFeedPosts(db, tag, (currentPage - 1) * PAGE_SIZE);

  return { posts, tagCounts, selectedTag: tag, currentPage, pageCount };
}

export async function loadPost(db: Db, redditPostId: string): Promise<PostDetail | null> {
  const [post] = await db
    .select()
    .from(importedVibePosts)
    .where(and(eq(importedVibePosts.redditPostId, redditPostId), displayablePost))
    .limit(1);

  if (!post) return null;

  const [images, tagRows, recRows] = await Promise.all([
    db
      .select({
        id: importedPostImages.id,
        sourceUrl: importedPostImages.sourceUrl,
        previewUrl: importedPostImages.previewUrl,
        sortOrder: importedPostImages.sortOrder,
      })
      .from(importedPostImages)
      .where(and(eq(importedPostImages.importedVibePostId, post.id), isNull(importedPostImages.deletedAt)))
      .orderBy(asc(importedPostImages.sortOrder), asc(importedPostImages.id)),
    db
      .select({ tag: vibeTags.tag })
      .from(vibeTags)
      .where(eq(vibeTags.importedVibePostId, post.id))
      .orderBy(asc(vibeTags.id)),
    db
      .select({
        id: recommendations.id,
        title: recommendations.title,
        tmdbId: recommendations.tmdbId,
        imdbId: recommendations.imdbId,
        igdbId: recommendations.igdbId,
        mediaType: recommendations.mediaType,
        releaseYear: recommendations.releaseYear,
        posterUrl: recommendations.posterUrl,
        backdropUrl: recommendations.backdropUrl,
        overview: recommendations.overview,
        externalUrl: recommendations.externalUrl,
        platforms: recommendations.platforms,
        popularity: recommendations.popularity,
        voteAverage: recommendations.voteAverage,
        evidenceScore: recommendations.evidenceScore,
      })
      .from(recommendations)
      .innerJoin(recommendationEvidence, eq(recommendationEvidence.recommendationId, recommendations.id))
      .where(eq(recommendationEvidence.importedVibePostId, post.id))
      .orderBy(desc(recommendations.evidenceScore), desc(recommendations.popularity), asc(recommendations.id)),
  ]);

  // The flag is the feed's rule; the page still renders only live images, so a
  // post whose last image died between the two reads is not a hero-less shell.
  // Games gives an imageless post a stand-in hero instead.
  if (images.length === 0 && !textPostsDisplayable) return null;

  const referenceArt = await loadReferenceArt(db, post.referenceIgdbId == null ? [] : [post.referenceIgdbId]);
  const seen = new Map<number, Recommendation>();
  for (const rec of recRows) if (!seen.has(rec.id)) seen.set(rec.id, rec);
  const ranked = [...seen.values()];
  const reference = toReference(post.referenceTitle, post.referenceIgdbId, referenceArt);

  return {
    id: post.id,
    redditPostId: post.redditPostId,
    title: post.title,
    vibeSummary: post.vibeSummary,
    permalink: post.permalink,
    createdUtc: post.createdUtc,
    images,
    tags: tagRows.map(({ tag }) => tag),
    recommendations: ranked,
    reference,
    standInArt:
      textPostsDisplayable && images.length === 0
        ? standInArtFor(reference, ranked.filter((rec) => rec.mediaType === "game"))
        : null,
  };
}

export type PostGame = {
  id: number;
  title: string;
  releaseYear: number | null;
  voteAverage: number | null;
};

export type PostGames = { games: PostGame[]; total: number };

/**
 * The games feed's per-post game list: each post's top `perPost` games, in the
 * post page's order (evidence score, then popularity), plus how many it has.
 * One query for the whole feed page; duplicates from multiple evidence rows
 * are collapsed per post.
 */
export async function loadPostGames(db: Db, postIds: number[], perPost = 10): Promise<Map<number, PostGames>> {
  const result = new Map<number, PostGames>();
  if (postIds.length === 0) return result;

  const rows = await db
    .select({
      postId: recommendationEvidence.importedVibePostId,
      id: recommendations.id,
      title: recommendations.title,
      releaseYear: recommendations.releaseYear,
      voteAverage: recommendations.voteAverage,
    })
    .from(recommendations)
    .innerJoin(recommendationEvidence, eq(recommendationEvidence.recommendationId, recommendations.id))
    .where(and(inArray(recommendationEvidence.importedVibePostId, postIds), eq(recommendations.mediaType, "game")))
    .orderBy(desc(recommendations.evidenceScore), desc(recommendations.popularity), asc(recommendations.id));

  for (const [postId, postRows] of groupBy(rows, (row) => row.postId)) {
    const seen = new Map<number, PostGame>();
    for (const { id, title, releaseYear, voteAverage } of postRows) {
      if (!seen.has(id)) seen.set(id, { id, title, releaseYear, voteAverage });
    }
    const games = [...seen.values()];
    result.set(postId, { games: games.slice(0, perPost), total: games.length });
  }
  return result;
}
