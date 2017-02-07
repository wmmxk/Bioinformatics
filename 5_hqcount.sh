#!bin/bash
#SBATCH -p high
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem-per-cpu 2000
#SBATCH -t 2:00:00
#SBATCH -o output/slurm.%N.%j.out
#SBATCH -e output/slurm.%N.%j.err

source 0_setpath.sh
cd $thout_p/66_thout
srun htseq-count  -t gene -i gene_id -s no ./sorted.sam $gff_f > ./count.txt
rm ./sorted.sam
