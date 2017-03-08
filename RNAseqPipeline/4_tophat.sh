#!/bin/bash
#SBATCH -p high
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem-per-cpu 7000
#SBATCH -t 4:00:00
#SBATCH -o output/slurm.%N.%j.out
#SBATCH -e output/slurm.%N.%j.err

source 0_setpath.sh
srun tophat2 -G $gff_f -o $thout_p/28_thout $ref_p/tophat_index/tomato $trim_p/28.trim.fastq 
cd $thout_p/28_thout
srun samtools  sort ./accepted_hits.bam ./sorted
srun samtools  view ./sorted.bam -o ./sorted.sam

