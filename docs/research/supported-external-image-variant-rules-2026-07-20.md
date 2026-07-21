# Supported External Image Variant Rules

## Scope and source distinction

An image's **selected delivery variant** is the provider-approved URL chosen for the current presentation context. The **original source fallback** is the source URL supplied by the upstream provider when no suitable delivery variant can be selected. These are distinct: variant selection may reduce bytes, but it must not rewrite, infer, or mutate an original source URL.

## Provider evidence and documented contracts

### Reddit

Reddit's official API documents media metadata with `source`, `preview`, and `resolutions` fields. Use the provider-supplied preview/resolution URLs as candidates and do not rewrite signed query URLs or manufacture new query parameters.

In controlled testing, the exact provider-supplied preview URL returned `200`, while the same URL with its width query changed returned `403`. This demonstrates that a syntactically plausible resized URL is not a supported variant.

Official documentation: [Reddit API](https://www.reddit.com/dev/api).

### TMDB

TMDB documents image URLs as `{base_url}/{file_size}{file_path}`. The permitted `file_size` values are configuration-backed; obtain them from the documented configuration details rather than assuming arbitrary sizes. Controlled results support `w300` and `w500` variants. Use `w300` for cards, `w500` for standard posters, and `w780` or `w1280` for larger imagery. Use the original only for full-size delivery.

TMDB attribution is mandatory wherever TMDB imagery or data is used, according to TMDB's applicable terms and attribution requirements.

Official documentation: [Image Basics](https://developer.themoviedb.org/docs/image-basics) and [Configuration Details](https://developer.themoviedb.org/reference/configuration-details).

### IMDb

IMDb supplies an official image URL together with width and height, but does not document a public image-transform contract. Always use the exact supplied URL; never construct suffix or size variants. Empirical `UX500` success is not evidence of a supported public contract and must not be relied upon. Mark an exact IMDb image as undersized when its supplied dimensions do not meet the presentation target.

Official documentation: [IMDb bulk-data title data dictionary](https://developer.imdb.com/documentation/bulk-data-documentation/data-dictionary/titles).

## Candidate validation

Every external candidate must pass these checks before selection:

- HTTPS URL and approved provider/domain allowlist.
- Successful response with an image MIME type.
- Successful image decode.
- Dimensions available and consistent with the intended target.
- Response size within applicable limits.
- Redirect chain remains approved; reject unsafe redirects, including redirects to unapproved hosts or schemes.

Provider-supplied URLs remain subject to validation. A candidate that fails validation is unavailable for selection.

## Deterministic selection rules

### Reddit

For cards, select the smallest valid provider-supplied preview meeting 480px. For heroes, select the smallest valid provider-supplied preview meeting 960px. Never target more than 1600px for these contexts. If no preview meets the context target, select the largest valid provider-supplied preview, then fall back to the original source.

Do not choose an animated original when a valid static candidate exists. An animated original is eligible only when no static candidate is available under the fallback rules.

### TMDB

Use `w300` for cards, `w500` for standard posters, and `w780` or `w1280` for larger imagery. Use the original only for full-size delivery. The requested size must be one documented by the TMDB configuration response.

### IMDb

Use the exact supplied URL only. Do not construct variants. If the supplied dimensions are below the presentation target, retain it as an undersized candidate and apply the fallback matrix rather than attempting a transform.

## Fallback matrix

| Condition | Action |
| --- | --- |
| Candidate is valid and meets the target | Select it according to the deterministic provider rule. |
| Candidate is valid but undersized | Prefer another valid candidate; otherwise use the largest valid provider candidate, or the original source fallback if valid. For IMDb, retain the exact URL and mark it undersized. |
| Candidate is unavailable or request fails | Skip it and continue through provider candidates, then try the original source fallback. |
| Candidate is invalid (wrong MIME, decode failure, missing dimensions, excessive size, or otherwise fails validation) | Reject it and continue through the matrix. |
| Candidate is animated and a valid static candidate exists | Reject the animated candidate for selection and use the static candidate. |
| Redirect is unapproved or unsafe | Reject the candidate; do not follow or rewrite it. Continue with approved candidates or fallback. |
| No candidate remains | Return no external image variant and use the caller's missing-image behavior. Do not invent a URL. |

## Attribution, policy, and implementation constraints

Provider terms, API policies, licensing, and attribution requirements apply independently of URL selection. Preserve required TMDB attribution and comply with Reddit and IMDb usage restrictions; a provider URL being reachable does not by itself grant permission to transform, cache, redistribute, or display it. Do not bypass signed URLs, access controls, robots or API policy, or provider rate limits. Keep original source URLs available as fallbacks without treating them as permission to create derived URL variants.

## Uncertainty

Observed headers, content negotiation, caching behavior, and image MIME responses can vary by provider, CDN, request headers, geography, and time. A successful response is not a documented transform contract. In particular, IMDb's empirical `UX500` behavior remains unsupported for variant construction. Reddit signed query behavior means width-query mutation is unsafe even when a changed URL looks equivalent. Validate actual responses and dimensions, but do not infer undocumented provider behavior from one successful request.
