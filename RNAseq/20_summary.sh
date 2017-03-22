#!/bin/bash
source 0_setpath.sh

cd $index_p
for i in $(find *new); do  wc -l $i >> $summary_p/index_sum.txt; done


cd $single_p
for i in $(find *single*); do  wc -l $i >> $summary_p/single_sum.txt; done

cd $summary_p
sort -n -k  2 index_sum.txt -o index_sum.txt
sort -n -k  2 single_sum.txt -o single_sum.txt
awk '{print $1/=4, $2}' single_sum.txt > single_r_sum.txt



