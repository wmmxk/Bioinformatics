#!/bin/bash
while read barcode index
do 
  sed -i "s/thout_p\/.\{1,2\}_thout/thout_p\/$index\_thout/g" 5_hqcount.sh
  sbatch 5_hqcount.sh
done < map.txt

