#! /bin/sh

for i in {9901..9930}; do
    xx=$(echo $i | sed 's/99//g') 
    echo "delete the user std${xx}"
done