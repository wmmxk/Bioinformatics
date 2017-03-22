#!/bin/bash
for f in $(ls); do sed -i 's/Beatriz/Nagu/g' $f; done
cd pycode

sed -i 's/Beatriz/Nagu/g'  read_path.py

cd ..


