#!/bin/bash
array=(5 6 7)
i=0

for element in ${array[@]}
do
  echo "element[$i] = $element"
  i=$((i+1))
done

for index in $(seq 0 $((${#array[@]}-1)))
do
  echo "array[$index] = ${array[$index]}"
done

echo "${array[1]}"

for ((i=0;i<${#array[@]};i++))
do
  echo "array[$i] = ${array[i]}"
done