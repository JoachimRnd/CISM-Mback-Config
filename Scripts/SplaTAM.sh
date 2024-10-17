#!/bin/bash
#SBATCH --job-name=SplaTAM
#SBATCH --output=Output/SplaTAM.log
#SBATCH --nodes=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=20G
#SBATCH --time=0-06:00:00
#SBATCH --partition=gpu
#SBATCH --gres=gpu:GeForceRTX3090:1

module load releases/2022a
module load Python/3.10.4-GCCcore-11.3.0
module load CUDA/11.7.0
source ~/Venv/venv-global/bin/activate

cd SplaTAM

python scripts/splatam.py configs/replica/splatam.py