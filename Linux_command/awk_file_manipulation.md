# Built in variables
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


# sum over a column

