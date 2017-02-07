#!/bin/bash
while read barcode index
do 
  sed -i "s/\/.\{1,3\}_thout/\/$index\_thout/g" 4_tophat.sh
  sed -i "s/\/.\{1,3\}trim/\/$index\.trim/g" 4_tophat.sh
  sbatch 4_tophat.sh
done < map.txt

