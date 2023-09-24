#! /bin/sh
sum=0 
for((i=1;i <= 100; i++))
do
sum=$((sum+i))
done

echo "the sum of 1 to 100 equals $sum"

sum=0
for i in {1..100} 
# for i in {1..100..2}
do
sum=$((sum+i))
done

echo "the sum of 1 to 100 equals $sum"

sum1=0
for i in $(seq 1 100) 
do
sum1=$((sum1+i))
done

echo "the sum of 1 to 100 equals $sum1"


i=1;sum2=0
while [ $i -le "100" ] ; do
   sum2=$((sum2+i)) 
   i=$(( i+1 ))
done
echo "the sum of 1 to 100 equals $sum2"

i=1;sum2=0
while (($i <= 100)) ; do
   sum2=$((sum2+i)) 
   i=$(( i+1 ))
done
echo "the sum of 1 to 100 equals $sum2"

for color in "red", "blue", "green"
do
 echo "color is $color"
done

for i in 1 2 3 4 5
do
 echo "color is $((i+1))"
done