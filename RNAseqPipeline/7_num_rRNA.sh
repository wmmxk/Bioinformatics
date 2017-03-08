#!/bin/bash
source 0_setpath.sh
cd $sam_p
for file in $(ls -v); do  echo $file; sed -n '8p' ./$file/summary.txt; done  > rRNA_num.txt
