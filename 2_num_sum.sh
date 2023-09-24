#! /bin/sh

if [ $# -lt 2 ] || [ $# -gt 2 ]; then
   echo "Usage $(basename "$0") arg1 arg2" >&2
   exit 1
fi 

read -p $'Please enter the first number:\n' first
read -p $'Please enter the first number:\n' second

sum=$((first+second))
echo "first + second = $sum"

:<<123
if [ $# != 3 ] ; then
echo "USAGE: $0 from to"
echo " e.g.: $0 ~/oucaijun/from ~/oucaijun/to"
exit 1;
fi
123

#read -p $'Please enter the first number:\n' first
#read -p $'Please enter the first number:\n' second
:<<1234
if [ -n "$(echo "$1" | sed -n '/^[0-9]*$/p')" ] && [ -n "$(echo "$2" | sed -n '/^[0-9]*$/p')" ]
then
result=$(($1 + $2))
echo "result is $result"
exit 0;
else
echo "USAGE: parameter is not numeric"
fi
1234

if [ ! -n "$(echo "$1" | sed -n '/^[0-9]*$/p')" ] || [ ! -n "$(echo "$2" | sed -n '/^[0-9]*$/p')" ]
then
echo "USAGE: parameter is not numeric"
exit 1
else
result=$((1 + 2))
echo "result is $result"
exit 0
fi
