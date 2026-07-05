# research/moment_detr

This directory will contain the MMVTG research implementation, which extends [Moment-DETR](https://github.com/jayleicn/moment-deter).

## Status

**TODO:** Research code to be added by the repository owner.

The research code resides in a separate repository and will be integrated here. The following outlines the expected structure.

## Expected Structure

To preserve upstream familiarity for researchers already familiar with Moment-DETR, the directory will follow the original Moment-DETR project layout as closely as possible:

```
research/moment_detr/
├── model/                  # Model architecture (Moment-DETR backbone + MMVTG extensions)
├── data/                   # Dataset loading and preprocessing
├── utils/                  # Utility functions
├── run.py                  # Training entry point
├── eval.py                 # Evaluation entry point
├── inference.py            # Inference entry point
├── config/                 # Configuration files
├── scripts/                # Training/evaluation shell scripts
└── requirements.txt        # Research-specific dependencies
```

## Lineage

- **Upstream:** [Moment-DETR](https://github.com/jayleicn/moment-deter) by Lei et al.
- **This repository:** A research extension adding weakly-supervised ASR pretraining, QVHighlights fine-tuning, and FIR-grounded inference.

This is **not** a GitHub fork of Moment-DETR. The relationship is documented here rather than through GitHub's fork mechanism.

## Our Modifications

Once integrated, the research code will include:

1. Weakly-supervised ASR pretraining workflow
2. Fine-tuning on QVHighlights for moment retrieval
3. FIR-grounded inference (retrieval-augmented prompting at inference time)
4. Evaluation scripts for CCTV crime temporal grounding

## Attribution

This implementation builds upon Moment-DETR. Our modifications are clearly marked within the source code. We do not claim ownership of the original Moment-DETR architecture.
