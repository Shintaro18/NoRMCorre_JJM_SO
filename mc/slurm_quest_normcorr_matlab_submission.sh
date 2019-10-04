#!/bin/bash
#SBATCH -A p30871
#SBATCH -p short
#SBATCH -t 03:00:00
#SBATCH --job-name="re"
#SBATCH -N 1
#SBATCH -n 1 
#SBATCH --mem-per-cpu=6000

module purge all

cd ~

#path to directory
#INPUT_dirpath=$1
#INPUT_movie_start=$2
#INPUT_movie_end=$3

# other parameters for CNMF_E

#INPUT_gSig=13
#INPUT_gSiz=40
#INPUT_Fs=20
#spatial downsampling 
#INPUT_ssub=8
#use parallel processing
#INPUT_parallel_enable=false

#add project directory to PATH
#export PATH=$PATH/projects/p30771/

#load modules to use
#module load python/anaconda3.6 

#load modules to use
module load matlab/r2018a

#cd to script directory
cd /home/sop5544/MATLAB/NoRMCorre_JJM
#run  

matlab -nosplash -nodesktop -r "dirpath = '$INPUT_dirpath';run('demo_1p_jjm_so2.m');exit;"


