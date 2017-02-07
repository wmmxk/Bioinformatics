#!/bin/bash
while read barcode index
do 
  sed -i "s/\/.\{1,2\}.single/\/$index\.single/g" 2.5_rRNA.sh
  sbatch 2.5_rRNA.sh
done < map.txt

