#check the existence of a file
```
#!/bin/bash
FILE="$1"
 
if [ -f "$FILE" ];
then
   echo "File $FILE exist."
else
   echo "File $FILE does not exist" >&2
fi

```

# Append one file to the end of the other
```
cat file1 file2 > file1_2
```

# Print directory tree
```
tree -v ./ 
```
-v : output in sorted order

# File search regular expression
```
rm [0-9]*.txt
```
remove files starting with a digit


# Check the total usage of my .fastq files in a directory
```
du -ch ./*.fastq | grep total
```

# compare two files in one screen
```
vimdiff file1 file2
```


# Count the number of files with each unique extension
```
ls | awk -F . '{print $NF}' | sort | uniq -c | awk '{print $1}'
```
