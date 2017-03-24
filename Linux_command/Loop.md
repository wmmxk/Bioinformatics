# Loop through a list of files
```
while read column1 column2
do
echo $column1
done < list.txt
```

This is very handy when analyzing multiple files who are not numbered just using a number. If the files are numbered with a number, for loop is fine

``` 
for i in {1..3}
do
echo $i
done


```

# Loop through two files in parallel:
```
#!/bin/bash
while read f1 <&3 && read f2 <&4
do
  if [[ ! $server =~ [^[:space:]] ]] ; then  #empty line exception
    continue
 fi 
   if [ $f1 = "1" ];then
      echo $f2 >> select.txt
   fi
done 3<file1 4<file2

```
