# store the output in a variable
wc -l

for f in $(find *tar.gz); do echo $f; done

# extract the content of a variable
sed ' ${}' does not work
sed "    " work


# positional variables

```
#!/bin/bash
awk 'NR%2{s=$0;next} {print s,$0}' $1 | cut -d ' ' -f 4,5

```
positional variables are very handy when you want to feed in an argument to
a script

```

string="ABCDE-123456"
IFS=- # use "local IFS=-" inside the function
set $string
echo $1 # >>> ABCDE
echo $2 # >>> 123456

```

split a line of string into tow
