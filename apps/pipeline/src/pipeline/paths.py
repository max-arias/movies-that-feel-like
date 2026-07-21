"""
pipeline.paths — Local filesystem path helpers for the pipeline.

All paths are derived from this file's location so the package
works regardless of the current working directory.
"""

from pathlib import Path

_PKG_DIR = Path(__file__).resolve().parent  # .../pipeline/src/pipeline
_PROJECT_ROOT = _PKG_DIR.parents[3]          # repo root (apps/../.. up from pipeline/src/pipeline)


def project_root() -> Path:
    """Return the absolute path to the repository root."""
    return _PROJECT_ROOT


def data_dir() -> Path:
    """Return ``root/data``."""
    return project_root() / "data"


def working_dir() -> Path:
    """Return ``root/data/working``."""
    return data_dir() / "working"


def normalized_dir() -> Path:
    """Return ``root/data/working/normalized``."""
    return working_dir() / "normalized"


def checkpoints_dir() -> Path:
    return working_dir() / "checkpoints"


def raw_dir() -> Path:
    """Return ``root/data/raw``."""
    return data_dir() / "raw"


def ensure_pipeline_dirs() -> None:
    """Create pipeline data directories if missing."""
    raw_dir().mkdir(parents=True, exist_ok=True)
    working_dir().mkdir(parents=True, exist_ok=True)
    normalized_dir().mkdir(parents=True, exist_ok=True)
    checkpoints_dir().mkdir(parents=True, exist_ok=True)
