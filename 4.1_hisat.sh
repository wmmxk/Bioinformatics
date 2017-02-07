#!/bin/bash
#SBATCH -p high
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem-per-cpu 7000
#SBATCH -t 1:00:00
#SBATCH -o output/slurm.%N.%j.out
#SBATCH -e output/slurm.%N.%j.err

source 0_setpath.sh
srun hisat2 -1 -x $ref_p/index_hisat/tomato -U $trim_p/28.trim.fastq -S $hisat_p/28.sam

srun htseq-count -t gene -i ID $hisat_p/28.sam $gff_f > $hisat_p/28.count.txt
srun rm $hisat_p/28.sam
