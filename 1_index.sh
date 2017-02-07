#!/bin/bash
#SBATCH -p high
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem-per-cpu 1000
#SBATCH -t 5:00:00
#SBATCH -o output/slurm.%N.%j.out
#SBATCH -e output/slurm.%N.%j.err

source 0_setpath.sh
zgrep -n TATAAT $raw_seq_p/R2.fastq.gz |cut -f1 -d: >$index_p/44.index.new
