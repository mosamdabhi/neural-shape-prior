#!/bin/bash 

dataset='Cheetah'
GPU_ID=0
field_of_validation='MV_Train'
mode_of_validation='2D'
plot_separate='False'
plot_improvement_over_iterations='False'
validate_manual_labels='False'
img_type=.jpg


CUDA_VISIBLE_DEVICES=$GPU_ID nice -10 python3 common/visualize.py --dataset=$dataset \
														--mode_of_validation=$mode_of_validation \
														--field_of_validation=$field_of_validation \
														--plot_separate=$plot_separate \
														--validate_manual_labels=$validate_manual_labels \
														--img_type=$img_type \
														--plot_improvement_over_iterations=$plot_improvement_over_iterations
