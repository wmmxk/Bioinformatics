# this code is to compare whether two files have the same number of lines
# in the comparison, if  [ $num1 == $num2 ]], space is a must
set -- `wc -l client.py`
num1=$1
set -- `wc -l test1`
num2=$1

if [ $num1 == $num2 ]
then
 echo "equal"
else
 echo "not equal"
fi

