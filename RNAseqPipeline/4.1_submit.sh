#!/bin/bash
while read barcode index
do 
  sed -i "s/\/.\{1,3\}sam/\/$index\.sam/g" 4.1_hisat.sh
  sed -i "s/\/.\{1,3\}trim/\/$index\.trim/g" 4.1_hisat.sh
  sed -i "s/\/.\{1,3\}count/\/$index\.count/g" 4.1_hisat.sh
  sbatch 4.1_hisat.sh
done < map.txt

