#!/bin/bash
#SBATCH --partition=SCSEGPU_UG 
#SBATCH --qos=normal
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --mem=8G
#SBATCH --job-name=elliot_job_2610_2158 
#SBATCH --output=output_%x_%j.out 
#SBATCH --error=error_%x_%j.err

module load anaconda 
source activate base 
jupyter run start.ipynb