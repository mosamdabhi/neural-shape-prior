#!/bin/bash 

dataset='Monkey'

##### GPU System #####
GPU_ID=0

##### MV-NRSfM #####
mode=train
batch=1000
model=models/$dataset
dataset_metric_multiplier=1000
break_training_counter=10000
from_scratch='True'
unittest='False'

CUDA_VISIBLE_DEVICES=$GPU_ID nice -10 python3 mvnrsfm/mvnrsfm_train.py 	--mode=$mode \
														--dataset=$dataset \
														--batch=$batch \
														--model=$model \
														--dataset_metric_multiplier=$dataset_metric_multiplier \
														--break_training_counter=$break_training_counter \
														--from_scratch=$from_scratch \
														--unittest=$unittest \
														--datasetunittest=$1

