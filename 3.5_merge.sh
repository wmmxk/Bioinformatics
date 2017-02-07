#!/bin/bash
#SBATCH -p med
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem-per-cpu 2000
#SBATCH -t 2:00:00
#SBATCH -o output/slurm.%N.%j.out
#SBATCH -e output/slurm.%N.%j.err

source 0_setpath.sh
srun -n cat $home_p/trim1/28.trim.fastq $home_p/trim2/28.trim.fastq > $home_p/trim/28.trim.fastq

