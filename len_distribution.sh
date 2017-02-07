#!/bin/bash
source 0_setpath.sh
cd $trim_p

for file in ./*
do
 awk 'NR%4 == 2 {lengths[length($0)]++} END {for (l in lengths) {print l, lengths[l]}}' $file  > $summary_p/trim/$file.len.dis
done



cd $single_p

for file in ./*
do
 awk 'NR%4 == 2 {lengths[length($0)]++} END {for (l in lengths) {print l, lengths[l]}}' $file  > $summary_p/single/$file.len.dis
done

