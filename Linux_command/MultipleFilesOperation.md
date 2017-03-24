# Merge all the files in numerically order column by column
```
paste $(find *trim* |sort -n) |column -s $'\t' -t > total.txt


```
