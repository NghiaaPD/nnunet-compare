#!/bin/bash

export nnUNet_raw="data/nnUNet_raw"
export nnUNet_preprocessed="data/nnUNet_preprocessed"
export nnUNet_results="data/nnUNet_results"

mkdir -p $nnUNet_raw $nnUNet_preprocessed $nnUNet_results

# Convert MSD dataset sang format nnUNet v2
nnUNetv2_convert_MSD_dataset \
    -i data/Task07_Pancreas \
    -overwrite_id 7

# Plan & Preprocess
nnUNetv2_plan_and_preprocess -d 7 --verify_dataset_integrity
