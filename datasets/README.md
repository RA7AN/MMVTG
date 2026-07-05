# Datasets

## Purpose

This directory documents the datasets used in MMVTG. We do not mirror the datasets themselves due to licensing and size constraints.

## Datasets Used

### QVHighlights
- **Purpose:** Fine-tuning moment retrieval, evaluation
- **Original Source:** [Moment-DETR GitHub](https://github.com/jayleicn/moment-deter)
- **License:** Refer to original source
- **Download:** *Link coming soon*
- **Citation:**
  ```bibtex
  @inproceedings{lei2021moment,
    title={Moment-DETR: A Transformer for Video Moment Retrieval},
    author={Lei, Jie and Berg, Tamara L and Bansal, Mohit},
    booktitle={CVPR},
    year={2021}
  }
  ```

### ASR Transcript Data
- **Purpose:** Weakly-supervised pretraining
- **Description:** ASR transcripts paired with video segments for pretraining
- **License:** *TODO*

### FIR Report Dataset
- **Purpose:** Grounded inference context augmentation
- **Description:** FIR (First Information Report) documents used during inference
- **License:** *TODO*

## Expected Directory Structure

```
datasets/
├── qvhighlights/
│   ├── videos/
│   ├── features/
│   └── annotations/
├── asr_pretrain/
│   └── transcripts/
└── fir_reports/
    └── reports/
```

## TODO

- [ ] Add dataset download links
- [ ] Document any preprocessing steps
- [ ] Include license information
- [ ] Provide dataset statistics
