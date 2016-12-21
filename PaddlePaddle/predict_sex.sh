#!/bin/bash
set -e

paddle train \
    --config=trainer_config_sex.py \
    --use_gpu=1 \
    --job=test \
    --init_model_path="output_sex/pass-00029" \
    --config_args=is_predict=1 \
    --predict_output_dir=. \

mv rank-00000 result.txt
