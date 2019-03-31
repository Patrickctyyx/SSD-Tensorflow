#!/usr/bin/env bash
DATASET_DIR=./af2019/
OUTPUT_DIR=./tfrecords
python3 tf_convert_data.py \
    --dataset_name=pascalvoc \
    --dataset_dir=${DATASET_DIR} \
    --output_name=voc_2007_train \
    --output_dir=${OUTPUT_DIR}