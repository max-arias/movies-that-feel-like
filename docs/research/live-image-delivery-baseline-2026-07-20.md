# Live Image Delivery Baseline

- Live URL: https://movies-that-feel-like.max-c82.workers.dev/
- Measured: 2026-07-20, Chromium using agent-browser; viewport 1280×577, DPR 1.

## Method
Loaded homepage and measured image getBoundingClientRect, naturalWidth/naturalHeight, loading/decoding/complete. Recorded fresh-navigation HAR for content types/body size/cache headers. Repeated on representative post `/posts/1v15tyh/`. HAR response body size for homepage Reddit resources was 0 due to cached/opaque cross-origin CDP exposure and is not a payload measurement.

## Homepage cards
Desktop two-column cards are around 444×444 CSS pixels. Representative sources: i.redd.it GIF 268×145 intrinsic (lazy/auto); preview.redd.it WebP images 918×549, 865×557, 1016×707, 1001×568, 1080×1311 (rendered 366×444), 1920×822, 2048×1374 (all lazy/auto). HAR had 30 Reddit preview images. Requested widths: min 525px, median 1125px, max 3072px; 23/30 (77%) exceeded twice 444px and 13/30 (43%) exceeded 1500px. Responses were WebP with `Cache-Control: public, max-age=604800, stale-while-revalidate=60`. Waste comes from 1500–3072px sources in 444px cards, and a 268×145 GIF forced into square object-cover.

## Post hero and posters
At `/posts/1v15tyh/`, hero first image rendered 802×451 CSS pixels, was i.redd.it GIF 268×145 intrinsic; response size unavailable (bodySize 0), no Cache-Control exposed and ETag present. It was eager, async-decoded, and complete. Same GIF appeared lower/full-width at about 1155×493. TMDB recommendation images used `/t/p/w500`, were 500×750 intrinsic and delivered as WebP despite `.jpg` URLs; response bytes were 23,418–93,795 and `Cache-Control: public, max-age=31919000`; ETags were sometimes exposed. No IMDb image appeared in this sample.

## Targets
| Context | Delivery width ladder |
| --- | --- |
| Homepage card | 320, 480, 640px |
| Post hero | 640, 960, 1280, 1600px |
| Recommendation poster | 320, 500, 750px |
| Full-size/lightbox | original or explicit 1600/2048px ceiling |

At DPR1, 480px fits a 444px card. 640px is a bandwidth-quality compromise for dense cards. 1600px covers the measured 802px hero at DPR2. Current Reddit card delivery often exceeds these targets. TMDB w500 suits the measured roughly 282px poster but a w300-class target could reduce bytes where acceptable. Keep only hero-first image eager; later carousel slides and below-fold posters stay lazy and async decoded.

## Limitations
One desktop viewport, one post, current homepage data; no mobile/DPR2 run; exact Reddit bytes unavailable from HAR; no IMDb sample; object-cover cropping means intrinsic ratio differs from visible crop.
