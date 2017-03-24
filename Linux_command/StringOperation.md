# Strip a prefix or suffix from a string
```
File=1_good.fastq
Nosuffix=${file%”.fastq”}.sam
Noprefix=${file#”1_”}

```
Replace the extension of file with another extension and keep the file name

#
