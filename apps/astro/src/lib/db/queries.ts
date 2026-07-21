/** Build-time D1 queries for the static Astro site. */

import { asc, desc, eq } from "drizzle-orm";
import type { DrizzleD1Database } from "drizzle-orm/d1";
import {
  importedPostImages,
  importedVibePosts,
  recommendationEvidence,
  recommendations,
  vibeTags,
} from "db/schema";

function groupBy<T, K>(items: T[], key: (item: T) => K): Map<K, T[]> {
  const groups = new Map<K, T[]>();
  for (const item of items) {
    const group = groups.get(key(item));
    if (group) group.push(item);
    else groups.set(key(item), [item]);
  }
  return groups;
}

type RecWithPostId = {
  id: number;
  importedVibePostId: number;
  evidenceCommentId: string | null;
  [key: string]: unknown;
};

function deduplicateRecs<T extends RecWithPostId>(rows: T[]) {
  const seen = new Map<number, T>();
  for (const row of rows) if (!seen.has(row.id)) seen.set(row.id, row);
  return [...seen.values()].map(({ importedVibePostId: _, ...rec }) => rec);
}

async function loadBuildData(db: DrizzleD1Database) {
  // These are the only database calls made for the entire static build data set.
  // Related rows are selected flat and assembled below, rather than queried per post.
  const posts = await db
    .select()
    .from(importedVibePosts)
    .where(eq(importedVibePosts.status, "publishable"))
    .orderBy(desc(importedVibePosts.createdUtc), desc(importedVibePosts.id));

  if (posts.length === 0) return { posts: [] as const };

  const [allImages, allTags, allRecs] = await Promise.all([
    db
      .select({
        image: {
          id: importedPostImages.id,
          importedVibePostId: importedPostImages.importedVibePostId,
          sourceUrl: importedPostImages.sourceUrl,
          previewUrl: importedPostImages.previewUrl,
          width: importedPostImages.width,
          height: importedPostImages.height,
          sortOrder: importedPostImages.sortOrder,
          createdAt: importedPostImages.createdAt,
        },
      })
      .from(importedPostImages)
      .innerJoin(importedVibePosts, eq(importedVibePosts.id, importedPostImages.importedVibePostId))
      .where(eq(importedVibePosts.status, "publishable"))
      .orderBy(asc(importedPostImages.importedVibePostId), asc(importedPostImages.sortOrder), asc(importedPostImages.id)),
    db
      .select({ tag: vibeTags })
      .from(vibeTags)
      .innerJoin(importedVibePosts, eq(importedVibePosts.id, vibeTags.importedVibePostId))
      .where(eq(importedVibePosts.status, "publishable"))
      .orderBy(asc(vibeTags.importedVibePostId), asc(vibeTags.id)),
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
        importedVibePostId: recommendationEvidence.importedVibePostId,
        evidenceCommentId: recommendationEvidence.evidenceCommentId,
      })
      .from(recommendations)
      .innerJoin(recommendationEvidence, eq(recommendationEvidence.recommendationId, recommendations.id))
      .innerJoin(importedVibePosts, eq(importedVibePosts.id, recommendationEvidence.importedVibePostId))
      .where(eq(importedVibePosts.status, "publishable"))
      .orderBy(
        asc(recommendationEvidence.importedVibePostId),
        desc(recommendations.evidenceScore),
        desc(recommendations.popularity),
        asc(recommendations.id),
      ),
  ]);

  const imagesByPost = groupBy(allImages.map(({ image }) => image), (image) => image.importedVibePostId);
  const tagsByPost = groupBy(allTags.map(({ tag }) => tag), (tag) => tag.importedVibePostId);
  const recsByPost = groupBy(allRecs, (rec) => rec.importedVibePostId);

  return {
    posts: posts.map((post) => ({
      ...post,
      images: imagesByPost.get(post.id) ?? [],
      tags: tagsByPost.get(post.id) ?? [],
      recommendations: deduplicateRecs(recsByPost.get(post.id) ?? []),
    })),
  };
}

let buildData: ReturnType<typeof loadBuildData> | undefined;

/** One cached, fatal-on-error data load shared by the homepage and post routes. */
export function getBuildData(db: DrizzleD1Database) {
  return (buildData ??= loadBuildData(db));
}
