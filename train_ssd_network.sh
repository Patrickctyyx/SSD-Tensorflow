#!/usr/bin/env bash
export PATH=/usr/local/cuda-10.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export CUDA_HOME=/usr/local/cuda
DATASET_DIR=./tfrecords/train
TRAIN_DIR=./logs/
nohup python3 -u train_ssd_network.py \
    --train_dir=${TRAIN_DIR} \
    --dataset_dir=${DATASET_DIR} \
    --dataset_name=pascalvoc_2007 \
    --dataset_split_name=train \
    --model_name=ssd_300_vgg \
    --save_summaries_secs=60 \
    --save_interval_secs=600 \
    --weight_decay=0 \
    --optimizer=adam \
    --learning_rate=0.001 \
    --num_classes=8 \
    --batch_size=32 > ./logs/ssd_train_log 2>&1 &
