#!/bin/bash
#SBATCH -A p30871
#SBATCH -p short
#SBATCH -t 03:59:00
#SBATCH --job-name="mc3"
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem-per-cpu=90G

module purge all


FOLDER_path=$1
echo The folder to search is 
echo $FOLDER_path

cd ~


module load matlab/r2018a

cd /projects/p30871/mc

matlab -nosplash -nodesktop -r "name='$FOLDER_path';disp(name);run('demo_1p_jjm_so3.m');exit;"
