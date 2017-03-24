#You may need to search in various scenarios
## search in the help page of a command
'''
man command
/
'''
##  In vi editor
###search only
```
:/pattern

hit n key to go to next match
```




## Search in text file using grep
```
grep -n --color=always pattern file.txt

```
-n: output the line number
--color: highlight the match in colr

## List just the names of files that contain a string in Linux
Use regular expression to refer to a bunch of files
```
egrep -l pattern file*.txt
```
## Search text in binary fiel

## Search files in a folder
ls + regular expression

##  Find files in a folder not on a list:
```
find . | grep -vf file.list 
```

## search printable text in a binary file
```
strings /usr/lib/x86_64-linux-gnu/libstdc++.so.6 | grep CXXABI_1.3.8

```
