#Built in variables
## Count related
* **NF**: Number of fields in a record.
* **NR**: Number of Records. (current record)

## seperator related
* **FS**: Field separator
* **OFS**: Output field separator.

```
awk 'BEGIN{FS=",";OFS=";"}{print $1,$3}' test.txt
```
Display the 1st and 3rd columns (Initially the seperator is ",", wheras the output uses ";" 

*　**RS**: Row seperator

```

```

# put every second row to the other column

```
awk 'NR%2{s=$0; next} {print s, $0}' file
```
If NR is a multiple of 2 do s=$0 and omit proceding statement

# sum over a column
```
awk '{sum += $2} END {print sum}' count_htseq.txt
```

# awk and regular expression (select rows starting with good)
```
cat file2.txt
good 2
good 3
bad 2

awk < ./file2.txt '/^good/  {print $2, $1}'
```

