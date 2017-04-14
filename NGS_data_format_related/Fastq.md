#Identify the Phred scale of quality scores used in fastq file
If you can get the distribution of the Phred score, you will see what scale is used. (Theoretically, you can just check the max and min, but 
sometimes the min in the scale is missing
'''
zcat C7_S68_L007_R2_001.fastq.gz |  head -n 800000 |sed -n '4~4p' |sed 's/\(.\)/\1\n/g'  | sort | uniq -c

/
'''
## Explaination of the one line command
```
zcat C7_S68_L007_R2_001.fastq.gz |  head -n 800000

```
Output the first 800000 lines

```
sed -n '4~4p'

```
From the 4th row, output every fourth row


```
sed 's/\(.\)/\1\n/g'
```

Places a newline after every character. 

```
sort | uniq -c

```
sort the ouput alphabetically. And at last uniq counts the number of occurences. 

```
awk '{for (i=1;i<=NF;i++) a[$i]++} END{for (c in a) print c,a[c]}' FS="" file
```

You can also use this one liner to count the occurrence of each charater

