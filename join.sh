#! /bin/sh
cat /etc/passwd | awk -F: '{if ($7 != "") print $7}' | sort | uniq -c | awk '{print $2,$1}'

join employee.txt bonus.txt | sort -k 2

for color in "red" "blue" "green"
do
 echo "color is $color"
done

for i in 1 2 3 4 5
do
 echo "color is $((i+1))"
done

color1="red blue green"
for i in $color1
do
 echo "color is $i"
done

for i in "red blue green"
do
 echo "color is $i"
done

export a="b"

export c=b 

echo "c=$c"

