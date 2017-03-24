# Interleave two files line by line
 ```
paste -d '\n' file1 file2 > file1_2
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

