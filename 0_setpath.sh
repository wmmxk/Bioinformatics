#!/bin/bash
home_p=$(dirname $PWD)

raw_seq_p=$home_p/raw_seq
barcode_p=$home_p
index_p=$home_p/index
single_p=$home_p/single
summary_p=$home_p/summary
bowtie2=/usr/bin/bowtie2
rRNA_p=/home/wxk/ref/rRNA
rmrRNA_p=$home_p/rmrRNA

trim_p=$home_p/trim
sam_p=$home_p/sam
adapter_p=/home/wxk/software/Trimmomatic-0.33/adapters
trim_s_p=/usr/share/java/trimmomatic.jar
tophat_s=/usr/bin/tophat2
ref_p=/home/wxk/ref/tomato
gff_f=$ref_p/tomato.gff3
thout_p=$home_p/thout
hisat_p=$home_p/hisat
Gsnap_p=$home_p/Gsnap
htseq_s=/home/wxk/.local/bin/htseq-count
samtools_s=/usr/bin/samtools 
summary_p=$home_p/summary
