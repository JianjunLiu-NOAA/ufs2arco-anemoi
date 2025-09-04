#!/bin/bash

#SBATCH -J ufs2arco_era5
#SBATCH -o logs/era5.%j.out
#SBATCH -e logs/era5.%j.err
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

srun ufs2arco era5_L13.yaml --overwrite
