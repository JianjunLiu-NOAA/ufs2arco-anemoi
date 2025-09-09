#!/bin/bash
#SBATCH -A nems 
#SBATCH -J test_aifs_en_gdas
#SBATCH -o slurm/test_aifs_en_gdas.%j.out
#SBATCH -e slurm/test_aifs_en_gdas.%j.err
#SBATCH --nodes=2
#SBATCH -t 2-00:00:00 
#SBATCH --partition=u1-h100
#SBATCH --qos=gpuwf     
#SBATCH --gpus-per-node=2
#SBATCH --mem=256G 
#SBATCH --ntasks-per-node=2

source /scratch3/NCEPDEV/nems/Jianjun.Liu/miniconda/bin/activate
conda activate anemoi
module load cuda

export HYDRA_FULL_ERROR=1 

srun anemoi-training train --config-name=aifs_ensemble_gdas_train_s1

