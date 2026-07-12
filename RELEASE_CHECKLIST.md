# Release Checklist

## MMVTG — Pre-Release Checklist

Before creating the public release, verify each of the following items:

---

## README

- [ ] README.md is complete and accurate
- [ ] Installation instructions are tested
- [ ] Quick start commands work
- [ ] All external links are valid
- [ ] Badges (if any) point to correct URLs

## Paper

- [ ] `paper/paper.pdf` uploaded
- [ ] `paper/supplementary.pdf` uploaded (if applicable)
- [ ] `paper/citation.bib` verified with correct publication info
- [ ] Citation format matches conference/journal requirements

## Checkpoints

- [x] Pretrained checkpoint uploaded to release assets
- [x] Fine-tuned checkpoint uploaded to release assets
- [x] `checkpoints/README.md` updated with download links
- [ ] Checkpoint file integrity verified (MD5/SHA256)



## Figures

- [ ] Pipeline diagram (`assets/figures/pipeline.png`) uploaded
- [ ] Architecture diagram (`assets/figures/architecture.png`) uploaded
- [ ] Training pipeline (`assets/figures/training_pipeline.png`) uploaded
- [ ] Deployment diagram (`assets/figures/deployment.png`) uploaded
- [ ] Grounded inference flow (`assets/figures/grounded_inference.png`) uploaded



## Datasets

- [ ] Dataset download links provided in `datasets/README.md`
- [ ] Dataset licenses documented
- [ ] Preprocessing instructions included



## Documentation

- [ ] All `docs/*.md` files reviewed and populated
- [ ] Code examples tested
- [ ] Deployment instructions verified



## Notebooks

- [ ] All notebooks reviewed and functional
- [ ] Notebooks execute end-to-end
- [ ] Outputs cleared for clean presentation



## Scripts

- [ ] All shell scripts tested
- [ ] Scripts executable (`chmod +x`)
- [ ] Expected arguments documented



## Configuration

- [ ] Config files contain correct hyperparameters
- [ ] Config files organized and documented



## License

- [ ] License chosen
- [ ] `LICENSE` file contains full license text
- [ ] License is compatible with third-party code (Moment-DETR)



## Repository

- [ ] `.gitignore` covers all generated artifacts
- [ ] No secrets or credentials in repository
- [ ] No hardcoded paths or URLs
- [ ] `requirements.txt` up to date
- [ ] Environment variables documented in `.env.example`



## GitHub Release

- [ ] Release created with tag `v1.0-paper`
- [ ] Release notes written
- [ ] Checkpoints attached as release assets
- [ ] Paper PDF attached as release asset
- [ ] Supplementary material attached (if applicable)



## Post-Release

- [ ] Announcement posted
- [ ] Social media channels updated
- [ ] Paper uploaded to arXiv (if applicable)
- [ ] Project website updated (if applicable)

---



## Quick Checklist (Summary)


| Area          | Status            | Notes                    |
| ------------- | ----------------- | ------------------------ |
| README        | ✅ Structure done  | Needs metrics/figures    |
| Paper         | ⏳ Placeholder     | Owner must upload        |
| Checkpoints   | ⏳ Placeholder     | Owner must upload        |
| Figures       | ⏳ Placeholder     | Owner must upload        |
| Datasets      | ⏳ Placeholder     | Needs download links     |
| Documentation | ✅ Stubs created   | Needs content            |
| Notebooks     | ⏳ Placeholder     | Owner must implement     |
| Scripts       | ⏳ Placeholder     | Owner must implement     |
| Configs       | ⏳ Placeholder     | Owner must fill in       |
| License       | ⏳ Placeholder     | Owner must choose        |
| Release       | ⏳ Not yet created | After all items complete |


