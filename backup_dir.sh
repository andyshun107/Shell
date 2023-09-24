#! /bin/sh
count=0

if [ $# -ne 1 -a -d "$1" ] ; then
   echo "Usage $(basename "$0") arg1" >&2
   exit 1
fi 


:<<123
for i in $(ls "$1")
# for i in {1..100..2}
do
mv "$1/$i" "$1/$i.bak"
count=$((count+1))
done
123

echo "count=$count"

for i in $(ls "$1")
do
    mv "$1/$i" "$1/${i%%.*}".bak
    echo "execute here"
    count=$((count+1))
done

echo "$count files have been added with bak"

