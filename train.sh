#!/bin/bash

#SBATCH --job-name=qwen25_train_test
#SBATCH --output=qwen25_train_test.txt
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --gpus=p100:2
#SBATCH --partition=gpu
#SBATCH --time=4:00:00

module load CUDA
module load cuDNN
# using your anaconda environment
conda activate qwen
python demo.py