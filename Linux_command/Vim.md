# You may need to search in various scenarios
```
:%s/pattern/replace/gi

```
every occurrence include two aspects. every line and every occurrence in each line.
%s  means all lines. If you want to specify a range of lines, use e,g. 1,10s means from the 1st line to 10th line.
g flag means globally
With the ‘i’ flag, you can make the substitute search text to be case insensitive.


## run a command in vi editor
'''
:!command
'''
##  Open two files side by side
```
vim -O file1 file2
ctrl+w+l
```
switch between files
##To turn off autoindent when you paste code, there's a special "paste" mode.
```
:set paste
```

# common hotkey
:w written
:q! quit without save
:undo cancel last operation

# copy another file to a file in vim wihtout opening another file
```
:r filename
```

# Move the cursor
```
G : go to bottom
g : to to top

```
work in command mode


# Delete
## Delete all the words after the cursor in a line
```
D 
```
## Delete the whole line where the cursor is in
```
C
```

## Delete a block of text

```
:1,5d
:4,$d

```
delete from lines between 1st and 5th lines.
delete from the 4th to the end


