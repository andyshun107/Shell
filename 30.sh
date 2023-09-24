#! /bin/sh
#cat file | sort | uniq -c | head -n 100

#file=$1
#awk '{print $1}' testdata.txt | sort | uniq -c | sort -k1nr | head -n10

HOSTNAME="YAHOO GOOGLE BAIDU SOHU"

for loop in $HOSTNAME; do
  echo "host=$loop"
done


while read Proto Recv-Q Send-Q LAddress Foreign Address State 
do 
  echo "hello"
  echo $LINE
done < "$(netstat -an)"

　