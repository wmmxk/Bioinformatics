#!/bin/bash
while read barcode index
do 
  sed -i "s/\/.\{1,3\}sam/\/$index\.sam/g" 4.2_gsnap.sh
  sed -i "s/\/.\{1,3\}trim/\/$index\.trim/g" 4.2_gsnap.sh
  sed -i "s/\/.\{1,3\}count/\/$index\.count/g" 4.2_gsnap.sh
  sbatch 4.2_gsnap.sh
done < map.txt

