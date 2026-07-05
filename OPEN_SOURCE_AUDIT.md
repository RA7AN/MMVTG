# Open Source Audit Report

## Repository Refactor — MMVTG

**Date:** July 5, 2026
**Branch:** `beta`

---

## ✅ Completed Work

### Directory Restructure
- [x] Git root moved from `MMVTG/` to `mmvtg-os1/` (preserving history)
- [x] Top-level directories created: `paper/`, `docs/`, `notebooks/`, `scripts/`, `configs/`, `checkpoints/`, `datasets/`, `experiments/`, `assets/`, `deployment/`

### Deployment Migration
- [x] `video-moment-seeker/` → `deployment/video-moment-seeker/`
- [x] `working_app.js` → `deployment/legacy/working_app.js`
- [x] `video-moment-seeker.rar` → `deployment/legacy/video-moment-seeker.rar`
- [x] Hardcoded ngrok URL extracted to `VITE_BACKEND_URL` env variable (Dashboard.tsx)
- [x] Created `.env.example` for deployment configuration
- [x] Removed Lovable.dev references from `index.html`
- [x] Removed unused `App.css` legacy Vite boilerplate
- [x] Updated deployment README with accurate project information

### Top-Level Infrastructure
- [x] `README.md` — Comprehensive project README with all required sections
- [x] `LICENSE` — Placeholder requesting owner to choose a license
- [x] `CHANGELOG.md` — Initial changelog with `v1.0-paper` entry
- [x] `CONTRIBUTING.md` — Basic contributor guide
- [x] `.gitignore` — Comprehensive ignore file (Python, Node, checkpoints, datasets, etc.)
- [x] `requirements.txt` — Placeholder with commented dependency categories

### Paper Assets
- [x] `paper/README.md` — Documentation with citation stub
- [x] `paper/paper.pdf` — Placeholder
- [x] `paper/supplementary.pdf` — Placeholder
- [x] `paper/citation.bib` — BibTeX citation placeholder

### Documentation Stubs (7 files)
- [x] `docs/methodology.md` — Methodology description stub
- [x] `docs/model.md` — Model architecture stub (with Moment-DETR attribution)
- [x] `docs/training.md` — Training documentation stub
- [x] `docs/deployment.md` — Deployment documentation stub
- [x] `docs/grounded_inference.md` — FIR-grounded inference documentation
- [x] `docs/results.md` — Results and benchmarks stub
- [x] `docs/repository_structure.md` — Repository structure overview

### Notebook Placeholders (8 files)
- [x] `notebooks/01_setup.ipynb` → `08_deployment.ipynb`

### Script Placeholders (5 files)
- [x] `scripts/download_data.sh` (executable)
- [x] `scripts/pretrain.sh` (executable)
- [x] `scripts/finetune.sh` (executable)
- [x] `scripts/evaluate.sh` (executable)
- [x] `scripts/inference.sh` (executable)

### Supporting Infrastructure
- [x] `checkpoints/README.md` — Documents expected checkpoints
- [x] `datasets/README.md` — Documents dataset sources and licenses
- [x] `configs/README.md` — Configuration files documentation
- [x] `experiments/hardware.md` — Hardware requirements stub
- [x] `experiments/training_log.md` — Training log stub
- [x] `experiments/hyperparameters.md` — Hyperparameters stub
- [x] `experiments/environment.md` — Environment setup stub
- [x] `assets/README.md` — Assets overview
- [x] `assets/figures/README.md` — Expected figures documentation

### Audit Reports
- [x] `OPEN_SOURCE_AUDIT.md` — This file
- [x] `RELEASE_CHECKLIST.md` — Pre-release checklist

### Git Workflow
- [x] Created `beta` branch
- [x] Preserved existing git history after git root migration
- [x] All work committed to `beta` branch (not `main`)

---

## 📄 Placeholder Files Created

The following files contain TODO/placeholder content and require owner attention:

| File | Type | Content |
|---|---|---|
| `paper/paper.pdf` | Placeholder | Text indicating paper needs upload |
| `paper/supplementary.pdf` | Placeholder | Text indicating supplementary needs upload |
| `paper/citation.bib` | Placeholder | Minimal BibTeX entry, needs verification |
| `LICENSE` | Placeholder | Requests owner to choose license |
| `requirements.txt` | Placeholder | Commented-out dependencies |
| `notebooks/01-08.ipynb` | Placeholder | Cells with TODO print statements |
| `scripts/*.sh` | Placeholder | Echo/TODO logic only |
| `configs/README.md` | Placeholder | Lists expected config files |
| `checkpoints/README.md` | Placeholder | Documents expected checkpoints |
| `datasets/README.md` | Placeholder | Documents datasets without download links |
| `experiments/*.md` | Placeholder | Filled with TODO markers |
| `assets/figures/README.md` | Placeholder | Lists expected figure files |
| `docs/*.md` | Placeholder | TODO sections for all content |

---

## 🔴 Missing Owner Inputs

The following items **must** be provided by the repository owner before public release:

### Critical (required before release)
1. **Research/ML code** — The Python model training, evaluation, and inference code does not exist in this repository. All scripts and notebooks are placeholders. This is the single largest gap.
2. **Paper assets** — Upload `paper/paper.pdf` and `paper/supplementary.pdf`
3. **License selection** — Choose and populate `LICENSE` with the full license text
4. **Checkpoint files** — Upload model checkpoints and add download links to `checkpoints/README.md`
5. **Figures** — Upload pipeline, architecture, training, deployment, and grounded inference diagrams to `assets/figures/`

### Important
6. **Dataset links** — Provide download URLs for QVHighlights, ASR data, and FIR reports
7. **Citation** — Verify and update `paper/citation.bib` with correct publication info
8. **README metrics** — Populate results/benchmark numbers in `README.md` and `docs/results.md`
9. **Hyperparameters** — Fill in actual hyperparameter values in `experiments/hyperparameters.md`
10. **Environment details** — Fill in Python, PyTorch, CUDA versions in `experiments/environment.md`
11. **Hardware specs** — Verify hardware requirements in `experiments/hardware.md`

### Nice-to-Have
12. **Training logs** — Add actual training logs to `experiments/training_log.md`
13. **Docker setup** — Consider adding Dockerfile and docker-compose for deployment
14. **CI/CD** — Add GitHub Actions for testing/building

---

## 📋 Recommendations

1. **Review the `beta` branch** thoroughly before merging to `main`
2. **Create a GitHub release** with the `v1.0-paper` tag
3. **Attach checkpoints** to the GitHub release as binary assets
4. **Consider opening a separate repo** for the full research code if it's not ready yet, keeping this repo as the deployment + documentation entrypoint
5. **Add a `.github/` directory** with issue templates and PR templates
6. **Add a `CITATION.cff`** file for GitHub's citation feature
7. **Consider adding a Docker Compose setup** for the deployment application
8. **Add a `SECURITY.md`** file if accepting public contributions

---

## ❓ Unresolved Issues

1. **No Python/ML code exists in this repository.** The deployment application references a backend API endpoint (`/predict`) that doesn't exist anywhere in this repo. The ML research pipeline must be either:
   - Integrated from another repository
   - Implemented from scratch
   - Or this repository should be scoped to just the deployment component

2. **The `AuthGuard.tsx` component** has a non-functional auth check — it calls `supabase.auth.getSession()` without awaiting it, so it never redirects unauthenticated users. This should be fixed.

3. **`.env` is not gitignored** at the deployment level — although it's in the top-level `.gitignore`, the deployment `.gitignore` doesn't include `.env`.

---

## 🧩 Repository Assembly

This section documents the assembly status of each repository component.

| Component | Status | Details |
|---|---|---|
| Moment-DETR research code | ⏳ Awaiting integration | To be placed in `research/moment_detr/` |
| Modified training scripts | ⏳ Awaiting integration | Adapt upstream scripts for MMVTG workflow |
| Modified inference scripts | ⏳ Awaiting integration | Add FIR-grounded inference support |
| Colab notebooks | ⏳ Placeholder stubs | 8 notebooks with TODO content |
| Paper PDF | ⏳ Placeholder | `paper/paper.pdf` needs upload |
| Supplementary material | ⏳ Placeholder | `paper/supplementary.pdf` needs upload |
| Architecture figures | ⏳ Placeholder | `assets/figures/` needs upload |
| Pipeline figures | ⏳ Placeholder | `assets/figures/` needs upload |
| Model checkpoints | ⏳ Placeholder | Need upload + download links |
| Dataset download links | ⏳ Placeholder | `datasets/README.md` needs URLs |
| Benchmark tables | ⏳ Placeholder | `docs/results.md` needs numbers |
| Deployment application | ✅ Complete | Ready — env vars configured |
| Documentation stubs | ✅ Complete | 7 docs with TODO markers |
| README | ✅ Complete | Three-category format |
| Contribution map | ✅ Complete | `CONTRIBUTION_MAP.md` created |
| Audit reports | ✅ Complete | `OPEN_SOURCE_AUDIT.md`, `RELEASE_CHECKLIST.md` |
| Git infrastructure | ✅ Complete | `beta` branch, `.gitignore` |

---

## 📦 Owner Assets Still Required

### Existing Assets to Upload

| Asset | Location | Notes |
|---|---|---|
| Moment-DETR-derived research code | `research/moment_detr/` | Full Python implementation |
| Modified training scripts | `research/moment_detr/scripts/` | Adapted from upstream |
| Modified inference scripts | `research/moment_detr/` | With grounded inference support |
| Colab notebooks | `notebooks/` | Replace stubs with real notebooks |
| Paper PDF | `paper/paper.pdf` | Camera-ready version |
| Supplementary material | `paper/supplementary.pdf` | If applicable |
| Figures: pipeline | `assets/figures/pipeline.png` | Full training + inference pipeline |
| Figures: architecture | `assets/figures/architecture.png` | Model architecture diagram |
| Figures: training pipeline | `assets/figures/training_pipeline.png` | Training workflow |
| Figures: deployment | `assets/figures/deployment.png` | Deployment architecture |
| Figures: grounded inference | `assets/figures/grounded_inference.png` | FIR-grounded inference flow |
| Screenshots | `assets/figures/` | Deployment app screenshots |
| Model checkpoints | `checkpoints/` + GitHub Release | .pth files |
| Dataset download links | `datasets/README.md` | URLs for QVHighlights, FIR data |
| Benchmark tables | `docs/results.md` | R1@0.5, R1@0.7, mAP values |

### Decisions to Make

| Decision | Location | Options |
|---|---|---|
| License selection | `LICENSE` | MIT, Apache 2.0, CC-BY-NC, etc. |
| Hyperparameter values | `experiments/hyperparameters.md` | Batch size, learning rate, etc. |
| Environment versions | `experiments/environment.md` | Python, PyTorch, CUDA versions |
| Hardware specs | `experiments/hardware.md` | GPU, RAM, storage details |

---

## 🤔 Assumptions Made During Refactor

1. The hardcoded ngrok URL was a development/debugging artifact and should be replaced with an environment variable
2. Lovable.dev references were boilerplate from initial project generation and should be removed
3. `App.css` was unused (the application uses Tailwind CSS exclusively)
4. `video-moment-seeker.rar` is a redundant archive and should be archived with the legacy files
5. The `MMVTG/README.md` placeholder is superseded by the new top-level `README.md`
6. `requirements.txt` dependencies are standard ML packages (PyTorch, torchvision, transformers, etc.) but exact versions are unknown
7. The research pipeline follows Moment-DETR conventions (QVHighlights, I3D features, BERT features)
8. `changes.md` supersedes portions of the original PRD — both retained as design docs in `docs/`
9. Research code will follow upstream Moment-DETR structure for researcher familiarity

---

*Generated during Phase 2 of the repository refactor. Owner should review all placeholders and action items before release.*

---

## 📋 Post-Refactor Additions (changes.md)

- [x] Created `research/moment_detr/` with upstream-familiar layout documentation
- [x] Created `CONTRIBUTION_MAP.md` classifying all components
- [x] Updated README to three-category format (Upstream Foundation / Our Contributions / Future Work)
- [x] Moved PRD.md and changes.md to `docs/` for internal reference
- [x] Removed legacy `MMVTG/` directory
- [x] Updated `docs/repository_structure.md` to reflect new layout
- [x] Expanded OPEN_SOURCE_AUDIT.md with Repository Assembly section and owner assets table
- [x] Updated terminology to use Grounded Inference (not RAG)
