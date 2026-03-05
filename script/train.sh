#!/bin/bash

export nnUNet_raw="/mnt/data/coden/nnunet/nnUNet/data/nnUNet_raw"
export nnUNet_preprocessed="/mnt/data/coden/nnunet/nnUNet/data/nnUNet_preprocessed"
export nnUNet_results="/mnt/data/coden/nnunet/nnUNet/data/nnUNet_results"
export PYTHONWARNINGS="ignore::UserWarning"

# --c: resume từ checkpoint cuối nếu đã train trước đó
# --npz: lưu softmax output
echo "=== Training fold 0 ==="
nnUNetv2_train 7 3d_fullres 0 --npz --c
