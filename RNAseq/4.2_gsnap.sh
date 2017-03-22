#!/bin/bash
#SBATCH -p high
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem-per-cpu 7000
#SBATCH -t 1:00:00
#SBATCH -o output/slurm.%N.%j.out
#SBATCH -e output/slurm.%N.%j.err

source 0_setpath.sh
srun gsnap -D $ref_p/index_gsnap -d tomato --nthread=2 -B 3 -N 0 -n 2 -Q --nofails --format=sam $trim_p/28.trim.fastq > $Gsnap_p/28.sam

srun htseq-count -t gene -i ID $Gsnap_p/28.sam $gff_f > $Gsnap_p/28.count.txt
