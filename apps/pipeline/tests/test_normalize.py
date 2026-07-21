import unittest

from pipeline.normalize import _collect_images


class RedditImageMetadataTests(unittest.TestCase):
    def test_keeps_exact_source_and_smallest_qualifying_resolution(self):
        source = "https://i.redd.it/original?a=1&b=2"
        preview = "https://preview.redd.it/asset.jpg?width=900"
        post = {
            "url": "https://i.redd.it/original?a=1&amp;b=2",
            "preview": {"images": [{
                "source": {"url": source, "width": 2400, "height": 1350},
                "resolutions": [
                    {"url": "https://preview.redd.it/asset.jpg?width=640", "width": 640, "height": 360},
                    {"url": preview, "width": 900, "height": 506},
                    {"url": "https://preview.redd.it/asset.jpg?width=1200", "width": 1200, "height": 675},
                ],
            }]},
        }

        self.assertEqual(_collect_images(post), [{
            "source_url": source,
            "sort_order": 0,
            "kind": "reddit_source",
            "preview_url": preview,
            "preview_width": 900,
            "preview_height": 506,
        }])

    def test_missing_qualifying_preview_is_null_and_source_survives(self):
        source = "https://i.redd.it/deleted-image.jpg?token=x&y=2"
        images = _collect_images({
            "url": source,
            "preview": {"images": [{
                "source": {"url": source},
                "resolutions": [{"url": "https://preview.redd.it/small", "width": 800}],
            }]},
        })

        self.assertEqual(images[0]["source_url"], source)
        self.assertIsNone(images[0]["preview_url"])

    def test_801_is_rejected_and_802_is_selected_unsorted(self):
        images = _collect_images({
            "url": "https://i.redd.it/source.jpg",
            "preview": {"images": [{
                "source": {"url": "https://i.redd.it/source.jpg"},
                "resolutions": [
                    {"u": "https://preview/1200", "x": 1200, "y": 1},
                    {"u": "https://preview/801", "x": 801, "y": 1},
                    {"u": "https://preview/802", "x": 802, "y": 2},
                ],
            }]},
        })
        self.assertEqual(images[0]["preview_url"], "https://preview/802")

    def test_direct_crosspost_preview_uses_media_metadata_association(self):
        images = _collect_images({
            "crosspost_parent_list": [{
                "id": "parent",
                "url": "https://i.redd.it/parent.jpg",
                "preview": {"images": [{"id": "media-1", "source": {"url": "https://different-preview-source"},
                    "resolutions": [{"url": "https://preview/900", "width": 900, "height": 1}]}]},
            }]
        })
        self.assertEqual(images[0]["preview_url"], "https://preview/900")

    def test_gallery_joins_media_id_order_and_preview(self):
        images = _collect_images({
            "gallery_data": {"items": [{"media_id": "b"}, {"media_id": "a"}]},
            "media_metadata": {
                "a": {"status": "valid", "e": "Image", "s": {"u": "https://source/a"}, "p": [{"u": "https://preview/a", "x": 802, "y": 4}]},
                "b": {"status": "valid", "e": "Image", "s": {"u": "https://source/b"}, "p": [{"u": "https://preview/b", "x": 900, "y": 5}]},
            },
        })
        self.assertEqual([i["source_url"] for i in images], ["https://source/b", "https://source/a"])
        self.assertEqual([i["preview_url"] for i in images], ["https://preview/b", "https://preview/a"])

    def test_crosspost_gallery_and_missing_source_are_safe(self):
        parent = {
            "id": "parent",
            "gallery_data": {"items": [{"media_id": "a"}]},
            "media_metadata": {"a": {"status": "valid", "e": "Image", "s": {}, "p": [{"u": "https://preview/a", "x": 900, "y": 1}]}},
        }
        self.assertEqual(_collect_images({"crosspost_parent_list": [parent]}), [])
        parent["media_metadata"]["a"]["s"] = {"u": "https://source/a"}
        images = _collect_images({"crosspost_parent_list": [parent]})
        self.assertEqual(images[0]["source_url"], "https://source/a")
        self.assertEqual(images[0]["kind"], "reddit_crosspost_gallery")


if __name__ == "__main__":
    unittest.main()
