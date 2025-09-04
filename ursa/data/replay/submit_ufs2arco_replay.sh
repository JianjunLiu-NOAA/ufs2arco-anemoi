#!/bin/bash

#SBATCH -J ufs2arco_replay
#SBATCH -o logs/replay.%j.out
#SBATCH -e logs/replay.%j.err
#SBATCH --account=nems
#SBATCH --partition=u1-service
#SBATCH --mem=64g
#SBATCH -t 24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --cpus-per-task=1

source /scratch3/NCEPDEV/nems/Jianjun.Liu/miniconda/bin/activate
module load openmpi
conda activate ufs2arco

srun ufs2arco replay_L13.yaml --overwrite
