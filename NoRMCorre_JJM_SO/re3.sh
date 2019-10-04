#!/bin/bash
#SBATCH -A p30871
#SBATCH -p short
#SBATCH -t 03:59:00
#SBATCH --job-name="mc3"
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem-per-cpu=90G

module purge all

cd ~

INPUT_filename=$1

module load matlab/r2018a

cd /projects/p30871/mc

matlab -nosplash -nodesktop -r "name='msCam13short.avi';run('demo_1p_jjm_so3.m');exit;"


