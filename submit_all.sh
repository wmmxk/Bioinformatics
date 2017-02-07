FIRST=&(sbatch ./1_sbatch.sh|cut -f 4 -d' ')
echo $FIRST
SECOND=$(sbatch -d afterany:$FIRST 2_sbatch.sh |cut -f 4-d' ')

