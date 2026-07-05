# MMVTG — Multimodal Video Temporal Grounding

**Find specific moments in video using natural language queries, augmented with grounded inference from FIR reports.**

This repository is the official research companion for our published paper. It extends [Moment-DETR](https://github.com/jayleicn/moment-deter) for the task of temporal grounding in surveillance video.

---

## News

- **[2025] Paper released**
- **[2025] Code & checkpoints open-sourced**

---

## Upstream Foundation

### Moment-DETR

This project builds upon [Moment-DETR](https://github.com/jayleicn/moment-deter), a transformer-based model for video moment retrieval. The original work provides:

- A DETR-style architecture for temporal grounding
- Training and evaluation pipelines on QVHighlights
- Precomputed I3D and BERT video features

Our work does **not** claim ownership of this architecture. The Moment-DETR implementation serves as the foundation that we extend. Researchers already familiar with Moment-DETR will recognize the project structure in `research/moment_detr/`.

---

## Our Contributions

MMVTG extends Moment-DETR with the following original contributions:

### Weakly-Supervised ASR Pretraining
A pretraining workflow that leverages Automatic Speech Recognition (ASR) transcripts to learn video-language alignment in a weakly-supervised manner, improving downstream temporal grounding performance.

### Fine-Tuning on QVHighlights
Adaptation of the ASR-pretrained model to the QVHighlights benchmark for the moment retrieval task.

### FIR-Grounded Inference
At inference time, retrieved FIR (First Information Report) documents are combined with the natural language query to form a context-augmented prompt, which is then passed to the Moment-DETR model. This is **not** a full Retrieval-Augmented Generation (RAG) pipeline — retrieval is only used for prompt augmentation during inference.

```
Natural Language Query
       +
Retrieved FIR Report
       ↓
  Combined Prompt
       ↓
 Moment-DETR Inference
       ↓
  Timestamped Results
```

### CCTV Crime Temporal Grounding Application
An end-to-end system for querying surveillance video footage using natural language, demonstrated through a TypeScript web application.

### Deployment Application
A full-stack TypeScript application (`deployment/video-moment-seeker/`) providing interactive video querying with authentication, history, and confidence visualization.

### Additional Resources
- End-to-end Colab notebooks for reproduction
- Released model checkpoints (pending upload)
- Paper companion documentation

---

## Repository Structure

```
/
├── README.md                   # This file
├── LICENSE                     # License information
├── CHANGELOG.md                # Release history
├── CONTRIBUTING.md             # Contribution guidelines
├── .gitignore                  # Git ignore rules
├── requirements.txt            # Python dependencies
├── paper/                      # Paper assets (PDF, supplementary, citation)
├── docs/                       # Documentation and design docs
├── assets/                     # Figures and visual assets
│   └── figures/
├── research/                   # Research implementation
│   └── moment_detr/            # Moment-DETR + MMVTG extensions
├── notebooks/                  # Jupyter notebooks for reproduction
├── deployment/                 # TypeScript web application
│   ├── video-moment-seeker/    # Current production app
│   └── legacy/                 # Archived prototypes
├── scripts/                    # Shell scripts for data and execution
├── configs/                    # Configuration files
├── checkpoints/                # Model checkpoint documentation
├── datasets/                   # Dataset documentation
├── experiments/                # Experiment tracking
├── CONTRIBUTION_MAP.md         # Component provenance classification
├── RELEASE_CHECKLIST.md        # Pre-release checklist
└── OPEN_SOURCE_AUDIT.md        # Open source readiness audit
```

---

## Installation

```bash
# Clone the repository
git clone https://github.com/your-org/mmvtg
cd mmvtg

# Install Python dependencies
pip install -r requirements.txt
```

For the deployment application:

```bash
cd deployment/video-moment-seeker
npm install
cp .env.example .env  # Configure your environment variables
npm run dev
```

---

## Quick Start

> **TODO:** Provide quick start inference commands once checkpoints are released and research code is integrated.

---

## Training

> **TODO:** Provide training commands and hyperparameters once research code is integrated.

---

## Fine-Tuning

> **TODO:** Provide fine-tuning commands for QVHighlights once research code is integrated.

---

## Evaluation

> **TODO:** Provide evaluation commands and expected metrics once research code is integrated.

---

## Inference

> **TODO:** Provide inference commands once research code is integrated.

---

## Grounded Inference

MMVTG supports **FIR-Grounded Inference**: during inference, a natural language query is paired with a retrieved FIR (First Information Report) to provide additional context. The combined prompt is then passed to Moment-DETR for temporal grounding.

```
Natural Language Query
       +
Retrieved FIR Report
       ↓
  Combined Prompt
       ↓
 Moment-DETR Inference
       ↓
  Timestamped Results
```

See `docs/grounded_inference.md` for details.

---

## Deployment

A full-stack TypeScript web application is available in `deployment/video-moment-seeker/`. It provides:

- Video upload and preview
- Natural language query input
- PDF witness report upload
- Temporal grounding predictions
- Confidence visualization
- Query history with Supabase

**Prerequisites:** Node.js 18+, a Supabase project, and a running backend API.

```bash
cd deployment/video-moment-seeker
npm install
cp .env.example .env
# Edit .env with your Supabase credentials and backend URL
npm run dev
```

---

## Released Checkpoints

> **TODO:** Upload pretrained and fine-tuned checkpoints. See `checkpoints/` for details.

---

## Datasets

| Dataset | Purpose | Source |
|---|---|---|
| QVHighlights | Fine-tuning moment retrieval | [QVHighlights](https://github.com/jayleicn/moment-deter) |
| FIR Dataset | Grounded inference context | *Documentation coming soon* |

See `datasets/README.md` for details.

---

## Results

> **TODO:** Populate benchmark results once paper is uploaded.

---

## Future Work

- End-to-end retrieval integration with external knowledge sources
- Multi-camera grounding for wide-area surveillance
- Streaming CCTV inference for real-time detection
- Domain adaptation to new environments and camera types

---

## Citation

If you find this work useful, please cite our paper:

```bibtex
@article{mmvtg2025,
  title={MMVTG: Multimodal Video Temporal Grounding},
  author={},
  journal={},
  year={2025}
}
```

Also cite the original Moment-DETR:

```bibtex
@inproceedings{lei2021moment,
  title={Moment-DETR: A Transformer for Video Moment Retrieval},
  author={Lei, Jie and Berg, Tamara L and Bansal, Mohit},
  booktitle={CVPR},
  year={2021}
}
```

---

## Acknowledgements

This work builds upon [Moment-DETR](https://github.com/jayleicn/moment-deter) by Lei et al. We thank the authors for releasing their code and models.

---

## Roadmap

- [ ] Upload paper PDF and supplementary
- [ ] Integrate Moment-DETR research code into `research/moment_detr/`
- [ ] Release pretrained and fine-tuned checkpoints
- [ ] Upload pipeline and architecture figures
- [ ] Complete notebook tutorials
- [ ] Add training configuration files
- [ ] Set up CI/CD

---

*This repository is maintained by the MMVTG team.*
