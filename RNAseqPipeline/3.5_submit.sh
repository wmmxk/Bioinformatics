#!/bin/bash
while read barcode index
do
  sed -i "s/\/.\{1,3\}trim/\/$index\.trim/g" 3.5_merge.sh
#  sbatch 3.5_merge.sh
done < map.txt

