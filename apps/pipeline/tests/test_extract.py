import unittest

from pipeline.extract import _run_extraction
from pipeline.extraction_cache import lookup, make_cache_record
from pipeline.models import PostExtraction


class ExtractionCacheMappingTests(unittest.TestCase):
    def test_success_failure_success_preserves_result_and_cache_mapping(self):
        prompts = [
            {
                "reddit_post_id": post_id,
                "system_prompt": "system",
                "user_prompt": post_id,
                "_cache_key": f"cache-{post_id}",
            }
            for post_id in ("A", "B", "C")
        ]

        class Client:
            def create(self, **kwargs):
                post_id = kwargs["messages"][1]["content"]
                if post_id == "B":
                    raise ValueError("B failed")
                return PostExtraction(
                    reddit_post_id=post_id,
                    reddit_title=f"title-{post_id}",
                    vibe={"summary": f"vibe-{post_id}", "tags": []},
                )

        completed = []

        def on_complete(request_number, prompt, result, error):
            completed.append((request_number, prompt["reddit_post_id"], result, error))

        results, errors = _run_extraction(
            prompts,
            sleep_seconds=0,
            max_attempts=1,
            backoff_seconds=0,
            backoff_multiplier=1,
            client=Client(),
            actual_model="test-model",
            provider="openai",
            concurrency=3,
            rate_limit_rpm=0,
            on_complete=on_complete,
        )

        self.assertEqual(set(results), {1, 3})
        self.assertEqual({result["reddit_post_id"] for result in results.values()}, {"A", "C"})
        self.assertEqual([error["reddit_post_id"] for error in errors], ["B"])
        self.assertEqual(
            {request_number: post_id for request_number, post_id, _, _ in completed},
            {1: "A", 2: "B", 3: "C"},
        )

        cache_records = [
            make_cache_record(
                key=prompts[request_number - 1]["_cache_key"],
                post_id=prompts[request_number - 1]["reddit_post_id"],
                payload=result,
                outcome="extracted",
            )
            for request_number, result in results.items()
        ]
        self.assertEqual(
            {(row["cache_key"], row["reddit_post_id"]) for row in cache_records},
            {("cache-A", "A"), ("cache-C", "C")},
        )
        self.assertIsNone(lookup(cache_records, "cache-B", expected_post_id="B"))
        result_a = lookup(cache_records, "cache-A", expected_post_id="A")
        result_c = lookup(cache_records, "cache-C", expected_post_id="C")
        self.assertIsNotNone(result_a)
        self.assertIsNotNone(result_c)
        assert result_a is not None and result_c is not None
        self.assertEqual(result_a["vibe"]["summary"], "vibe-A")
        self.assertEqual(result_c["vibe"]["summary"], "vibe-C")


if __name__ == "__main__":
    unittest.main()
