# store the result of wc -l in a variable

```
lines=`wc –l file.txt | awk ‘{print $1/2}’`
lines=$(wc –l file.txt | awk ‘{print $1/2}’)

```
