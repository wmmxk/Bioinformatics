#!/bin/bash
home_p=$(dirname $PWD)
cd $home_p
mkdir raw_seq
mkdir index
mkdir single
mkdir trim
mkdir thout
mkdir Gsnap
mkdir hisat
mkdir sam
mkdir summary
cd raw_seq
# wget 
# wget 
mv ../*_R1_* ./R1.fastq.gz
mv ../*_R2_* ./R2.fastq.gz
