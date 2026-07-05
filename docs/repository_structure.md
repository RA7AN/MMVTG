# Repository Structure

## Purpose

This document provides a detailed explanation of the repository organization.

## Structure Overview

```
/
├── README.md                   # Main documentation — three categories: Upstream, Our Work, Future
├── LICENSE                     # License information
├── CHANGELOG.md                # Release history
├── CONTRIBUTING.md             # Contribution guidelines
├── .gitignore                  # Git ignore rules
├── requirements.txt            # Python dependencies
├── paper/                      # Paper PDF, supplementary, citation
├── docs/                       # Documentation (including design docs: PRD.md, changes.md)
├── assets/                     # Figures and visual assets
│   └── figures/                # Pipeline and architecture diagrams
├── research/                   # Research implementation
│   └── moment_detr/            # Moment-DETR + MMVTG extensions (upstream-familiar layout)
├── notebooks/                  # Reproduction notebooks
├── deployment/                 # TypeScript web application
│   ├── video-moment-seeker/    # Current production application
│   └── legacy/                 # Archived prototypes
├── scripts/                    # Shell scripts
├── configs/                    # Configuration files
├── checkpoints/                # Model checkpoint documentation
├── datasets/                   # Dataset documentation
├── experiments/                # Experiment tracking
├── CONTRIBUTION_MAP.md         # Component provenance classification
├── RELEASE_CHECKLIST.md        # Pre-release checklist
└── OPEN_SOURCE_AUDIT.md        # Open source readiness audit
```

## Key Design Principles

### Upstream Familiarity
The `research/moment_detr/` directory preserves the Moment-DETR project structure so that researchers familiar with the upstream project can navigate the code immediately.

### Provenance Transparency
Every component is classified in `CONTRIBUTION_MAP.md` as either:
- **Upstream Moment-DETR** — unmodified original code
- **Modified from Moment-DETR** — adapted code
- **Original Implementation** — our contributions

### Three-Part README
The README is organized into three clear categories:
1. **Upstream Foundation** — Moment-DETR attribution
2. **Our Contributions** — MMVTG additions
3. **Future Work** — ideas not yet implemented

## Directories

### `paper/`
Contains the published paper PDF, supplementary material, and citation file.

### `docs/`
Documentation organized by topic: methodology, model architecture, training, deployment, grounded inference, and results. Also contains design documents (PRD, changes.md) as internal reference.

### `research/moment_detr/`
Home for the Moment-DETR-derived research code. Layout mirrors the upstream project for researcher familiarity.

### `notebooks/`
Step-by-step Jupyter notebooks for reproducing all experiments.

### `deployment/`
The TypeScript web application (`video-moment-seeker/`) for interactive video temporal grounding. Legacy prototypes are archived in `deployment/legacy/`.

### `scripts/`
Shell scripts for common tasks: data download, pretraining, fine-tuning, evaluation, and inference.

### `configs/`
Configuration files for training, evaluation, and inference.

### `checkpoints/`
Documentation for released model checkpoints (files hosted on GitHub releases).

### `datasets/`
Documentation for datasets used in the project (data not mirrored in repo).

### `experiments/`
Experiment tracking logs, hyperparameters, and environment details.

### `assets/`
Figures, diagrams, and visual assets for documentation.
