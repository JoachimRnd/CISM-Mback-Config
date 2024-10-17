#!/bin/bash
#SBATCH --job-name=MONOGS
#SBATCH --output=Output/MONOGS.log
#SBATCH --nodes=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=20G
#SBATCH --time=0-06:00:00
#SBATCH --partition=gpu
#SBATCH --gres=gpu:GeForceRTX3090:1

module load releases/2021b
module load Python/3.9.6-GCCcore-11.2.0
module load CUDA/11.6.0
module load matplotlib/3.4.3-intel-2021b
source ~/Venv/venv-monogs/bin/activate

cd Gaussian-Splatting-SLAM

python slam.py --config configs/rgbd/replica/room0_sp.yaml --eval