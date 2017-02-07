#!/bin/bash

source 0_setpath.sh
#cd $single_p

#for f in $(ls); do  wc -l $f >> $summary_p/single_num.txt; done 

cd $index_p
for f in $(ls); do wc -l $f >> $summary_p/index_num.txt; done
