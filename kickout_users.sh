#! /bin/sh

for i in {9901..9930}; do
    xx=$(echo $i | sed 's/99//g') 
    echo "delete the user std${xx}"
done

a=$(echo $0 | sed 's/bash/csh/')

echo "a=$a"
for i in $(cat /etc/passwd | cut -f 1 -d :); do
  #  Userdel $i 
  echo 
  echo "delete the user $i"
done

:<<123
a=`echo $0 | sed 's/..\(...\).*/\1/'`
for i in `w|awk -v b=$a 'NR>2{if($NF !~ b) print $2}'`
do
    echo $i
    fuser -k /dev/$i
done
123

echo $SHEll | sed 's/-\(....\).*/\1/'

echo $SHEll | sed 's/-\(....\).*/\1/'