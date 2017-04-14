# What aspects you need to specify when constructing a pattern 
## 1. Position: anchor character: ^ and $
## 2. Greedy or not. (Pay special attention to this when using RE in sed)
## 3. Wild character
## 4. Times of matching
## 5. Matching a set of characters
Situation: multiple delimiter in awk
```
input= "/logs/tc0001/tomcat/tomcat7.1/conf/catalina.properties:app.env.server.name = demo.example.com" 

echo $input | awk -F'[/=]' '{print $3 "\t" $5 "\t" $8}'
you get: 
tc0001    tomcat7.1     demo.example.com

awk -F**'[=\t;]'**  : =, tab or colon as delimiter
```

## 6. Alternative patterns

Situation: search two patterns in each line, output the row number and column number for each hit.

```
echo -e "aaa;bbb;ccc;rrr;mmm;\ngggg;sss;mmmm;ssss;eee;aaa;\n" |awk -F";" '{for(i=1;i<=NF;i++){if ($i ~ /(rrr)|(ssss)/){print $i}}}'
```


## 7. Reverse matching
   Situation: To Count the number of numbers in each line?
```
sed 's/[^0-9]//g' dat | awk '{ print length }'

```
   Where dat is your example text, sed deletes (for each line) all non-" characters and awk prints for each line its size (i.e. length is equivalent to length($0), where $0 denotes the current line).
For another character you just have to change the sed expression. For example count (:'s/[^(]//g'


# After your find the pattern:
##. Backreference



# Regular expression syntax varies
In vi, sed, grep, awk, egrep, find, ls, python and R, you can use regular expression, the syntax varies a little bit.

egrep and awk use the extended regular expression. With these extensions, those special characters preceded by a backslash no longer have the special meaning: "\{" , "\}", "\<", "\>", "\(", "\)" as well as the "\digit". There is a very good reason for this, which I will delay explaining to build up suspense.

```
 grep '^After\|^Test' myfile

equavilent to
egrep '^(After|Test)' myfile
```

# Extende regular expression:
## case 1:
Matching the word "the" in the beginning, middle, end of a sentence, or end of a line can be done with the extended regular expression:
```
(^| )the([^a-z]|$)
```

## case 2:
match "a simple problem," "an easy problem," as well as "a problem".

egrep "a[n]? (simple|easy)? problem" data



# Confusion to clarify:
1. In find, * is a wildtype letter but in RE * functions as quantifier.


2. Alternative matching in awk:


