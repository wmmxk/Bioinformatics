
## Repeat Previous command
'''
Use the up arrow to view the previous command and press enter to execute it.
Type !! and press enter from the command line.
Press Control+P will display the previous command, press enter to execute it
'''
##  Execute previous command that starts with a specific word


```
!qstat
```



## Subtitute words from history commands

When you are searching through history, you may want to execute a different command but use the same parameter from the command that you’ve just searched.

```
find test.txt
vi !!:$
```
!!:$ gets the argument from the previous command to the current command

```
find test.txt
^find^vi^  
```


