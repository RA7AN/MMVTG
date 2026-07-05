# Contribution Map

This document classifies every major component of this repository as one of:

| Classification | Meaning |
|---|---|
| **Upstream Moment-DETR** | Unmodified code from the original Moment-DETR repository |
| **Modified from Moment-DETR** | Adapted from Moment-DETR with our modifications |
| **Original Implementation** | Implemented entirely by us for this project |

---

## Research Components

| Component | Classification | Details |
|---|---|---|
| Model architecture (transformer encoder/decoder) | **Upstream Moment-DETR** | Moment-DETR backbone; not our work |
| Attention mechanisms | **Upstream Moment-DETR** | Original Moment-DETR implementation |
| Feature extraction (I3D, BERT) | **Upstream Moment-DETR** | Precomputed features used by Moment-DETR |
| Query-video cross-attention | **Upstream Moment-DETR** | Core Moment-DETR architecture |
| Training loop and optimizer | **Modified from Moment-DETR** | Adapted for weakly-supervised pretraining |
| Loss functions | **Modified from Moment-DETR** | Adapted for our training objectives |
| ASR weakly-supervised pretraining | **Original Implementation** | Our contribution |
| QVHighlights fine-tuning pipeline | **Modified from Moment-DETR** | Adapted from upstream evaluation scripts |
| Inference pipeline | **Modified from Moment-DETR** | Modified to support grounded inference |
| FIR-grounded inference | **Original Implementation** | Our contribution — retrieval-augmented prompting |
| Evaluation metrics (R1, mAP) | **Upstream Moment-DETR** | Standard Moment-DETR evaluation |
| Configuration files | **Modified from Moment-DETR** | Adapted with MMVTG hyperparameters |

## Deployment

| Component | Classification | Details |
|---|---|---|
| TypeScript web application | **Original Implementation** | Built from scratch for this project |
| Supabase authentication | **Original Implementation** | Our integration |
| Video player with clip mode | **Original Implementation** | Our implementation |
| Confidence visualization | **Original Implementation** | Our implementation |
| Query history management | **Original Implementation** | Our implementation |
| Backend API (FastAPI) | **Original Implementation** | Inference server for the model |

## Documentation

| Component | Classification | Details |
|---|---|---|
| README.md | **Original Implementation** | Our documentation |
| Paper PDF | **Original Implementation** | Our publication |
| Colab notebooks | **Original Implementation** | Our reproduction tutorials |
| Methodology docs | **Original Implementation** | Our documentation |
| Grounded inference docs | **Original Implementation** | Our documentation |
| Deployment docs | **Original Implementation** | Our documentation |

## Infrastructure

| Component | Classification | Details |
|---|---|---|
| Shell scripts | **Modified from Moment-DETR** | Adapted for MMVTG workflow |
| Checkpoints | **Original Implementation** | Our trained model weights |
| Requirements | **Modified from Moment-DETR** | Adapted for our dependencies |

---

## Guidelines for Contributors

- **Upstream Moment-DETR** files should not be modified without clear justification
- **Modified from Moment-DETR** files should note the upstream source in comments
- **Original Implementation** files represent our IP and research contributions
- When submitting PRs, clearly indicate which category your changes fall into
