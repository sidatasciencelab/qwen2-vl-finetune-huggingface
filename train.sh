#!/bin/bash

#SBATCH --job-name=qwen25_train_test
#SBATCH --output=qwen25_train_test.txt
#SBATCH --cpus-per-gpu=2
#SBATCH --gres=gpu:h200:1              # Request 1 H200 GPU
#SBATCH --partition=gpu_h200 
#SBATCH --time=4:00:00

# module load CUDA
# module load cuDNN
# using your anaconda environment
conda init
conda activate qwen
python demo.py