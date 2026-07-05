# Grounded Inference

## Purpose

This document describes FIR-grounded inference in MMVTG.

## Overview

MMVTG does **not** implement a complete Retrieval-Augmented Generation (RAG) pipeline. Instead, retrieval is only used during inference by pairing the natural language query with retrieved FIR reports before passing the combined prompt to the Moment-DETR model.

## Inference Flow

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

## Key Concepts

- **FIR Reports**: First Information Reports provide contextual information about the incident
- **Query Augmentation**: FIR content is concatenated with the natural language query
- **Moment-DETR Inference**: The combined prompt is fed to the standard Moment-DETR inference pipeline

## TODO

- [ ] Add detailed grounded inference implementation
- [ ] Document FIR retrieval mechanism
- [ ] Include example queries and results
- [ ] Describe prompt formatting
