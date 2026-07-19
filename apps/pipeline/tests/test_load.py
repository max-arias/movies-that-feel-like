import unittest

from pipeline.load import _build_merge_index, _check_extraction_health, _select_post_ids_for_load


class LoadPartialExtractionTests(unittest.TestCase):
    def test_partial_extraction_requires_a_success(self):
        artifact = {"status": "extracted", "summary": {"success_count": 0, "error_count": 2}}

        with self.assertRaises(ValueError):
            _check_extraction_health(artifact, allow_partial=True, allow_empty=False)

        _check_extraction_health(artifact, allow_partial=False, allow_empty=True)

    def test_partial_extraction_accepts_mixed_results(self):
        artifact = {"status": "extracted", "summary": {"success_count": 1, "error_count": 2}}

        _check_extraction_health(artifact, allow_partial=True, allow_empty=False)

    def test_partial_extraction_rejects_failed_status(self):
        artifact = {"status": "failed", "summary": {"success_count": 1, "error_count": 2}}

        with self.assertRaises(ValueError):
            _check_extraction_health(artifact, allow_partial=True, allow_empty=False)

    def test_partial_mode_selects_only_successful_extraction_posts(self):
        normalized = {
            "posts": [
                {"reddit_post_id": "successful"},
                {"reddit_post_id": "failed"},
            ]
        }
        extraction = {
            "results": [{"reddit_post_id": "successful", "recommendations": []}],
        }

        index = _build_merge_index(normalized, {}, extraction, {})
        selected = _select_post_ids_for_load(
            index["all_post_ids"], index["extraction_by_post"], allow_partial=True
        )

        self.assertEqual(selected, ["successful"])
        self.assertNotIn("failed", selected)


if __name__ == "__main__":
    unittest.main()
