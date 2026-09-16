/** Runtime queries backing the feed and the post detail pages. */

import { and, asc, desc, eq, inArray, isNull, sql, type SQL } from "drizzle-orm";
import type { AnySQLiteColumn } from "drizzle-orm/sqlite-core";
import {
  importedPostImages,
  importedVibePosts,
  recommendationEvidence,
  recommendations,
  vibeTags,
} from "db/schema";
import type { Db } from ".";

export const PAGE_SIZE = 25;

export type FeedImage = {
  id: number;
  sourceUrl: string;
  previewUrl: string | null;
  sortOrder: number;
};

export type FeedPost = {
  id: number;
  redditPostId: string;
  title: string;
  vibeSummary: string | null;
  images: FeedImage[];
  tags: string[];
};

export type TagCount = { tag: string; count: number };

export type FeedPage = {
  posts: FeedPost[];
  tagCounts: TagCount[];
  selectedTag: string;
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
};

/**
 * The product rule, expressed once: a post is displayable while it owns at
 * least one image Reddit has not deleted. `deleted_at` is NULL both for images
 * that are live and for images no probe has reached yet, so a post is only
 * ever hidden once a probe has positively identified every one of its images
 * as dead.
 */
const hasLiveImage = (postId: AnySQLiteColumn) =>
  sql`exists (select 1 from "imported_post_images" i where i."imported_vibe_post_id" = ${postId} and i."deleted_at" is null)`;

const taggedWith = (tag: string) =>
  sql`exists (select 1 from "vibe_tags" t where t."imported_vibe_post_id" = ${importedVibePosts.id} and t."tag" = ${tag})`;

function groupBy<T, K>(items: T[], key: (item: T) => K): Map<K, T[]> {
  const groups = new Map<K, T[]>();
  for (const item of items) {
    const group = groups.get(key(item));
    if (group) group.push(item);
    else groups.set(key(item), [item]);
  }
  return groups;
}

/** Tag vocabulary with counts, computed over displayable posts only. */
async function loadTagCounts(db: Db): Promise<TagCount[]> {
  const rows = await db
    .select({
      tag: vibeTags.tag,
      count: sql<number>`count(distinct ${vibeTags.importedVibePostId})`,
    })
    .from(vibeTags)
    .innerJoin(importedVibePosts, eq(importedVibePosts.id, vibeTags.importedVibePostId))
    .where(and(eq(importedVibePosts.status, "publishable"), hasLiveImage(vibeTags.importedVibePostId)))
    .groupBy(vibeTags.tag);

  return rows
    .map(({ tag, count }) => ({ tag, count: Number(count) }))
    .sort((a, b) => b.count - a.count || a.tag.localeCompare(b.tag));
}

async function countDisplayablePosts(db: Db, tag: string | null): Promise<number> {
  const conditions: SQL[] = [eq(importedVibePosts.status, "publishable"), hasLiveImage(importedVibePosts.id)];
  if (tag) conditions.push(taggedWith(tag));

  const [row] = await db
    .select({ count: sql<number>`count(*)` })
    .from(importedVibePosts)
    .where(and(...conditions));

  return Number(row?.count ?? 0);
}

async function loadFeedPosts(db: Db, tag: string | null, offset: number): Promise<FeedPost[]> {
  const conditions: SQL[] = [eq(importedVibePosts.status, "publishable"), hasLiveImage(importedVibePosts.id)];
  if (tag) conditions.push(taggedWith(tag));

  const rows = await db
    .select({
      id: importedVibePosts.id,
      redditPostId: importedVibePosts.redditPostId,
      title: importedVibePosts.title,
      vibeSummary: importedVibePosts.vibeSummary,
    })
    .from(importedVibePosts)
    .where(and(...conditions))
    .orderBy(desc(importedVibePosts.createdUtc), desc(importedVibePosts.id))
    .limit(PAGE_SIZE)
    .offset(offset);

  const ids = rows.map((row) => row.id);
  if (ids.length === 0) return [];

  const [imageRows, tagRows] = await Promise.all([
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
  ]);

  const imagesByPost = groupBy(imageRows, (image) => image.importedVibePostId);
  const tagsByPost = groupBy(tagRows, (tag) => tag.importedVibePostId);

  return rows.map((row) => ({
    id: row.id,
    redditPostId: row.redditPostId,
    title: row.title,
    vibeSummary: row.vibeSummary,
    images: (imagesByPost.get(row.id) ?? []).map(({ id, sourceUrl, previewUrl, sortOrder }) => ({
      id,
      sourceUrl,
      previewUrl,
      sortOrder,
    })),
    tags: (tagsByPost.get(row.id) ?? []).map(({ tag }) => tag),
  }));
}

/**
 * One page of the feed for `?tag=` / `?page=`. A tag that has no displayable
 * posts is not offered by `tagCounts`, so an unknown or empty tag falls back
 * to the unfiltered feed.
 */
export async function loadFeed(db: Db, requestedTag: string | null, requestedPage: number): Promise<FeedPage> {
  const tagCounts = await loadTagCounts(db);
  const selectedTag = requestedTag && tagCounts.some(({ tag }) => tag === requestedTag) ? requestedTag : "all";
  const tag = selectedTag === "all" ? null : selectedTag;

  const total = await countDisplayablePosts(db, tag);
  const pageCount = Math.max(1, Math.ceil(total / PAGE_SIZE));
  const currentPage = Math.min(Math.max(requestedPage, 1), pageCount);
  const posts = await loadFeedPosts(db, tag, (currentPage - 1) * PAGE_SIZE);

  return { posts, tagCounts, selectedTag, currentPage, pageCount };
}

export async function loadPost(db: Db, redditPostId: string): Promise<PostDetail | null> {
  const [post] = await db
    .select()
    .from(importedVibePosts)
    .where(and(eq(importedVibePosts.redditPostId, redditPostId), eq(importedVibePosts.status, "publishable")))
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

  // A post whose images are all deleted is not a page: the product rule drops
  // it from the feed and out of the site entirely.
  if (images.length === 0) return null;

  const seen = new Map<number, Recommendation>();
  for (const rec of recRows) if (!seen.has(rec.id)) seen.set(rec.id, rec);

  return {
    id: post.id,
    redditPostId: post.redditPostId,
    title: post.title,
    vibeSummary: post.vibeSummary,
    permalink: post.permalink,
    createdUtc: post.createdUtc,
    images,
    tags: tagRows.map(({ tag }) => tag),
    recommendations: [...seen.values()],
  };
}
