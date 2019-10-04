#!/bin/bash
#SBATCH -A p30871
#SBATCH -p short
#SBATCH -t 00:10:00
#SBATCH --job-name="re"
#SBATCH -N 1
#SBATCH -n 1 
#SBATCH --mem-per-cpu=6G

module purge all

cd ~

INPUT_dirpath=$1

module load matlab/r2018a

cd /home/sop5544/MATLAB/mc

matlab -nosplash -nodesktop -r "dirpath = '$INPUT_dirpath';run('demo_1p_jjm_so2.m');exit;"


