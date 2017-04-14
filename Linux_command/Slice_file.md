#Slice text file according to a start pattern and end pattern

awk

# Select columns

```
cut -d ' ' -f 2,4

```
-d specify the seperator
-f specify which field to display


# Select lines according to a column
```
awk ‘{if ($1==2) {print $0}}’ test.txt
```

If the first column is equal to 2, print the whole row

# Slice text file between two strings
```
cat file.txt
START=A
  xxxxx
  xxxxx
END
START=B
  xxxxx
  xxxxx
END
```

```
sed '/^START=A/, / ^END/!d' file.txt
sed -n '/^START=A$/,/^END$/p' file.txt
```
[source](http://stackoverflow.com/questions/16643288/sed-to-extract-text-between-two-strings)

# Remove the first few lines of a file
```
tail -n +3 file.txt

```
without +, only the last three lines are displayed


# Output the row and column nubmer of a pattern in a file
Suppose you have a txt file like this, you want to find which row has "rrr"
aa;bbb;ccc;rrr;mmm;
gggg;rrr;mmmm;ssss;eee;aaa;


```
echo -e "aaa;bbb;ccc;rrr;mmm;\ngggg;rrr;mmmm;ssss;eee;aaa;\n" |awk -F";" '{for(i=1;i<=NF;i++){if ($i ~ /rrr/){print NR,i}}}'

```
