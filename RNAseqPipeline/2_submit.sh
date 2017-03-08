#!/bin/bash
while read barcode index
do 
  sed -i "s/read.py.*/read.py $index/g" 2_sbatch.sh
  sbatch 2_sbatch.sh
done < map.txt

