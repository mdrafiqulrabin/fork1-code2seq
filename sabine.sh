#!/bin/bash
#SBATCH -J code2seq
#SBATCH -o code2seq.txt
#SBATCH -t 24:01:01
#SBATCH --mem=10000
#SBATCH -N 1 -n 1
#SBATCH -p gpu
#SBATCH --gres=gpu:1
#SBATCH -A alipour

cd /project/alipour/rabin/tnpa/fork-code2seq/

module load CMake/3.12.2
module load python/3.6
module load GCC/7.2.0-2.29
module load CUDA/10.0.130

python3 code2seq.py --load models/java-large-model/model_iter52.release --test data/java-large/java-large.test.c2s

