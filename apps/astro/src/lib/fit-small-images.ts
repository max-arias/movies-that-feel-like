/**
 * Games hero images: some Reddit posts only have a small upload (a 265px box
 * shot). Stretching one over a full-width hero makes it blurry, so an image
 * marked `data-fit` that is much smaller than its frame either
 *
 * - swaps to `data-fallback-art`, the IGDB artwork of the post's reference
 *   game, and reveals the frame's `[data-art-credit]` line; or, without one,
 * - gets `data-small`, which shows it whole (object-contain) over its own
 *   blurred copy.
 */
export function fitSmallImages(): void {
  document.querySelectorAll<HTMLImageElement>("img[data-fit]").forEach((image) => {
    const check = () => {
      if (!image.naturalWidth || !image.clientWidth) return;
      const small = image.naturalWidth < image.clientWidth * 0.75 || image.naturalHeight < image.clientHeight * 0.75;
      const art = image.dataset.fallbackArt;
      if (small && art) {
        delete image.dataset.fallbackArt;
        image.removeAttribute("data-small");
        image.src = art;
        image.previousElementSibling?.setAttribute("src", art);
        image.closest("[data-hero-frame]")?.querySelector("[data-art-credit]")?.removeAttribute("hidden");
        return;
      }
      image.toggleAttribute("data-small", small);
    };
    image.addEventListener("load", check);
    if (image.complete) check();
  });
}
