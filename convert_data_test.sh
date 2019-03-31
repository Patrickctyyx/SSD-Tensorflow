#!/usr/bin/env bash
DATASET_DIR=./af2019/test/
OUTPUT_DIR=./tfrecords/test
python3 tf_convert_data.py \
    --dataset_name=pascalvoc \
    --dataset_dir=${DATASET_DIR} \
    --output_name=voc_2007_test \
    --output_dir=${OUTPUT_DIR}