# CHANGES.md

# Repository Strategy Revision

This document supersedes portions of the original PRD after additional architectural decisions.

The previous PRD should still be considered valid unless explicitly overridden below.

The goal of these changes is to align the repository with the actual research process used for the published paper while maintaining academic integrity and minimizing unnecessary divergence from the upstream Moment-DETR project.

---

# 1. Repository Philosophy (Updated)

The repository should **not** present itself as a completely independent implementation.

Instead, it should present itself as:

> A research extension of Moment-DETR accompanying our published paper.

The repository consists of three major components:

1. Research implementation (derived from Moment-DETR)
2. Deployment application
3. Paper and reproducibility resources

---

# 2. Repository Lineage

Do **not** attempt to:

* convert this repository into a GitHub fork
* rewrite Git history
* recreate upstream history
* replace the repository with a fresh clone

Instead:

Treat Moment-DETR as the upstream research implementation that this work extends.

Repository lineage should be communicated through documentation rather than GitHub fork relationships.

---

# 3. Research Code Integration

The current repository only contains the deployment application.

The research implementation will be supplied separately by the repository owner.

Prepare the repository for this future integration.

Create the following structure:

research/

```
moment_detr/
```

Within this directory:

* preserve the upstream project structure as much as possible
* avoid unnecessary renaming
* avoid restructuring purely for aesthetics

The objective is for researchers already familiar with Moment-DETR to immediately recognize the project layout.

If the research code has not yet been added:

Create placeholders documenting the expected structure.

Do not fabricate implementations.

---

# 4. Preserve Upstream Familiarity

This is a major design principle.

Do not reorganize Moment-DETR simply because another structure appears cleaner.

If the upstream organization is logical:

Keep it.

Minimize divergence.

Only introduce new directories where necessary for our contributions.

---

# 5. Repository Layout

Preferred structure:

/

README.md

paper/

docs/

assets/

notebooks/

research/

```
moment_detr/
```

deployment/

checkpoints/

datasets/

configs/

scripts/

experiments/

CONTRIBUTION_MAP.md

OPEN_SOURCE_AUDIT.md

---

# 6. Deployment

The existing TypeScript application should remain under:

deployment/

No behavioral changes should be introduced.

Only organizational improvements.

---

# 7. Grounded Inference Terminology

Update terminology throughout the repository.

Avoid describing our implementation as a complete RAG pipeline.

Instead use terminology such as:

* Grounded Inference
* Retrieval-Augmented Prompting
* Context-Augmented Inference
* FIR-Grounded Inference

Documentation should accurately describe what was implemented.

Our inference pipeline is:

Natural language query

*

Retrieved FIR report

↓

Combined prompt

↓

Moment-DETR inference

No vector database implementation should be implied.

No retrieval architecture should be fabricated.

---

# 8. README Improvements

Update the README to clearly distinguish three categories.

## Upstream Foundation

Moment-DETR

Explain that our work extends this implementation.

---

## Our Contributions

Document contributions such as:

* ASR weakly-supervised pretraining workflow
* Fine-tuning on QVHighlights
* CCTV crime temporal grounding application
* Retrieval-augmented prompt grounding during inference using FIR reports
* End-to-end Colab workflow
* TypeScript deployment application
* Released checkpoints
* Paper companion repository

---

## Future Work

Future work should include ideas such as:

* End-to-end retrieval integration
* Larger external knowledge sources
* Multi-camera grounding
* Streaming CCTV inference
* Domain adaptation

Do not state or imply that these are already implemented.

---

# 9. Contribution Map

Expand CONTRIBUTION_MAP.md.

It should classify every major repository component as one of:

* Upstream Moment-DETR
* Modified from Moment-DETR
* Original implementation

Example categories include:

* model architecture
* training pipeline
* evaluation
* inference
* Colab notebooks
* deployment application
* documentation
* checkpoints
* grounded inference

The objective is complete transparency regarding project provenance.

---

# 10. Repository Audit Additions

Expand OPEN_SOURCE_AUDIT.md.

Include a new section:

Repository Assembly

Document:

* components already present
* components awaiting integration
* placeholders created
* owner assets still required

---

# 11. Owner Assets

Update the final audit so that it explicitly lists every asset that the repository owner still needs to provide.

Examples include:

* Moment-DETR-derived research code
* Modified training scripts
* Modified inference scripts
* Colab notebooks
* Paper PDF
* Supplementary material
* Architecture figures
* Pipeline figures
* Screenshots
* Model checkpoints
* Dataset download links
* Benchmark tables

The objective is for the repository owner to immediately know what remains before public release.

---

# 12. Colab Workflow

The notebooks should accurately represent the workflow used during research.

Expected sequence:

01_setup

02_download_features

03_pretraining

04_finetuning

05_evaluation

06_inference

07_grounded_inference

08_deployment

If notebooks are unavailable, create placeholders.

---

# 13. Research Reproducibility

Strengthen repository documentation so that a researcher can understand:

* how pretraining was performed
* how fine-tuning was performed
* how inference was performed
* how grounded inference was performed
* how deployment works

without reading the paper first.

Avoid duplicating the paper verbatim.

Instead, complement it with implementation-focused documentation.

---

# 14. Placeholder Policy

Continue following the original PRD.

Never fabricate:

* implementation details
* diagrams
* benchmark values
* citations
* hyperparameters
* datasets
* experimental results

Whenever information is unavailable:

Create a clearly marked placeholder.

Record it in OPEN_SOURCE_AUDIT.md.

---

# 15. Final Success Criteria

The repository should become a polished research companion for the published paper.

After the owner adds the remaining assets, the repository should be ready for:

* public GitHub release
* checkpoint release
* paper announcement
* LinkedIn announcement
* future community contributions

No further structural refactoring should be required after the remaining assets are integrated.
