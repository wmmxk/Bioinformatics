#!/bin/bash
source 0_setpath.sh
tophat2 -G $gff_f -o $thout_p/28_thout $ref_p/index_tophat/tomato $trim_p/28.trim.fastq

