#!/bin/bash
# Run Inference
# TODO: Implement inference logic
#
# Usage: bash scripts/inference.sh [video_path] [query] [checkpoint_path]

echo "============================================"
echo "  MMVTG - Inference"
echo "============================================"
echo ""
echo "TODO: Implement inference logic."
echo ""
echo "Usage:"
echo "  bash scripts/inference.sh <video_path> <query> [checkpoint]"
echo ""
echo "For grounded inference:"
echo "  bash scripts/inference.sh <video_path> <query> [checkpoint] --fir <fir_report>"
echo ""
echo "Video: ${1:-\"(required)\"}"
echo "Query: ${2:-\"(required)\"}"
echo "Checkpoint: ${3:-checkpoints/finetuned.pth}"
echo "============================================"
