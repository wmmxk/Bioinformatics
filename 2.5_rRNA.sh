#!/bin/bash
#SBATCH -p high
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem-per-cpu 2000
#SBATCH -t 2:00:00
#SBATCH -o output/slurm.%N.%j.out
#SBATCH -e output/slurm.%N.%j.err

source 0_setpath.sh

srun -n 1 $bowtie2_p -x $rRNA_p/rRNA --un $rmrRNA_p/66.single.fastq $single_p/66.single.fastq 
