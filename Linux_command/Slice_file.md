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
