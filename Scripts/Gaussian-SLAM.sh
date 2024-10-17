#!/bin/bash
#SBATCH --job-name=GSLAM
#SBATCH --output=Output/GSLAM.log
#SBATCH --nodes=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=20G
#SBATCH --time=0-04:00:00
#SBATCH --partition=gpu
#SBATCH --gres=gpu:GeForceRTX3090:1

module load releases/2022a
module load Python/3.10.4-GCCcore-11.3.0
module load CUDA/11.7.0
source ~/Venv/venv-global/bin/activate

cd Gaussian-SLAM

python run_slam.py configs/Replica/room0.yaml --input_path ../Datasets/Replica/room0 --output_path output/Replica/room0