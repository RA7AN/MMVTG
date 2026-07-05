# PRD
# Refactor MMVTG Repository for Open Source Release

## Objective

Refactor the existing repository into a polished, reproducible research repository accompanying the published paper.

The goal is NOT to redesign the implementation.

The goal is to produce a clean, reproducible, well-documented repository that allows researchers to:

- understand our contributions
- reproduce our experiments
- run inference
- use our released checkpoints
- deploy our demonstration application

When information is unavailable, DO NOT invent implementations.

Instead:

- create TODO stubs
- create placeholder markdown
- clearly list what is missing in a final report

The repository should always remain buildable.

---

# Background

This project extends Moment-DETR.

Moment-DETR remains the primary architecture.

Our work adds:

- weakly-supervised ASR pretraining workflow
- fine-tuning workflow on QVHighlights
- inference-time contextual grounding using retrieved FIR reports
- CCTV crime temporal grounding application
- deployment through a TypeScript web application

We did NOT modify Moment-DETR into a fully retrieval-augmented architecture.

We only augment prompts during inference.

Do NOT represent this as a complete RAG pipeline.

---

# Repository Goals

After refactoring the repository should satisfy:

✓ Easy to understand

✓ Easy to reproduce

✓ Easy to cite

✓ Easy to deploy

✓ Proper attribution to Moment-DETR

✓ Minimal effort required from repository owner before release

---

# Primary Requirements

## 1 Repository Structure

Reorganize into:

/
README.md

LICENSE

CHANGELOG.md

CONTRIBUTING.md

paper/

docs/

notebooks/

deployment/

scripts/

configs/

checkpoints/

datasets/

experiments/

assets/

requirements.txt

---

## 2 Deployment

The current TypeScript application should remain functional.

Move it under:

deployment/

Do NOT change application behavior.

Only improve organization.

---

## 3 Colab

Create notebook placeholders if notebooks are unavailable.

Expected notebooks:

01_setup.ipynb

02_download_features.ipynb

03_pretraining.ipynb

04_finetuning.ipynb

05_evaluation.ipynb

06_inference.ipynb

07_grounded_inference.ipynb

08_deployment.ipynb

If notebooks already exist, organize them.

---

## 4 Scripts

Organize shell scripts.

Expected:

download_data.sh

pretrain.sh

finetune.sh

evaluate.sh

inference.sh

If scripts are missing:

create placeholder scripts with TODO comments.

---

## 5 Documentation

Create documentation stubs.

Expected files:

docs/methodology.md

docs/model.md

docs/training.md

docs/deployment.md

docs/grounded_inference.md

docs/results.md

docs/repository_structure.md

Each should contain:

- purpose
- expected contents
- TODO sections

Do not fabricate technical details.

---

## 6 Paper Assets

Create:

paper/

Include placeholders for:

paper.pdf

supplementary.pdf

citation.bib

---

## 7 Figures

Create assets folder.

Expected placeholders:

pipeline.png

architecture.png

training_pipeline.png

deployment.png

grounded_inference.png

If figures are unavailable:

leave placeholder README.

---

## 8 README

Generate a professional README.

Include sections only.

Do NOT fabricate numbers.

Expected sections:

Title

Overview

Abstract

News

Contributions

Architecture

Repository Structure

Installation

Quick Start

Training

Fine-tuning

Evaluation

Inference

Grounded Inference

Deployment

Released Checkpoints

Datasets

Results

Citation

Acknowledgements

Roadmap

---

## 9 Moment-DETR Attribution

Repository must prominently acknowledge:

Original implementation:

Moment-DETR

Clearly distinguish:

Original work

Our contributions

Never imply we created Moment-DETR.

---

## 10 Grounded Inference

Rename any existing "rag" terminology.

Use:

Grounded Inference

or

Retrieval-Augmented Prompting

Do NOT create:

rag/

retriever/

vector_database/

embedding_pipeline/

unless those implementations actually exist.

Grounded inference should simply document:

Natural language query

+

Retrieved FIR report

↓

Combined prompt

↓

Moment-DETR inference

---

## 11 Models

Create:

checkpoints/README.md

Describe expected checkpoints.

Do not include files.

Expected:

Pretraining checkpoint

Fine-tuned checkpoint

Best checkpoint

---

## 12 Dataset Documentation

Create:

datasets/README.md

Expected sections:

Dataset

Purpose

Original source

License

Download

Citation

Do not mirror datasets.

Only document.

---

## 13 Experiments

Create:

experiments/

Include:

hardware.md

training_log.md

hyperparameters.md

environment.md

Fill only known values.

Mark unknown values clearly.

---

## 14 Config Cleanup

Organize configuration files.

Remove duplicates.

Do not alter hyperparameters.

---

## 15 Ignore Files

Improve:

.gitignore

Remove:

cache

logs

tensorboard

temporary checkpoints

downloaded datasets

---

## 16 License

If repository currently lacks one:

create placeholder requesting owner selection.

Do not assume MIT.

---

## 17 CHANGELOG

Generate:

v1.0-paper

Initial open-source release

Placeholder entries only.

---

## 18 CONTRIBUTING

Basic contributor guide.

---

## 19 GitHub Release Preparation

Create:

RELEASE_CHECKLIST.md

Containing:

README complete

Paper uploaded

Checkpoints uploaded

Figures uploaded

Datasets documented

License chosen

Release created

Announcement posted

---

## 20 Final Audit

After completing all work generate:

OPEN_SOURCE_AUDIT.md

This is extremely important.

It should contain four sections.

# Completed

Everything successfully refactored.

# Placeholder Files

Every stub created.

# Missing Owner Inputs

Exactly what the repository owner must provide.

For example:

paper.pdf

pipeline figure

checkpoints

dataset links

training screenshots

benchmark table

etc.

# Recommendations

Optional improvements after release.

---

# Constraints

Never fabricate:

metrics

training times

figures

dataset links

citations

hyperparameters

results

implementation details

If unavailable:

create TODO placeholders.

---

# Success Criteria

At completion the repository should be one commit away from public release.

The repository owner should only need to:

- upload assets
- upload checkpoints
- upload paper
- verify README
- publish release

No additional restructuring should be required.

Produce OPEN_SOURCE_AUDIT.md summarizing everything still required from the owner.