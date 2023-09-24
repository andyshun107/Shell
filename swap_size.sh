#! /bin/sh
size=$(free -m | grep Swap | awk '{print $2}')

echo "Swap size is ${size}M"

size=$(free -m | grep Swap | awk -v b=M '{print $2b}')

echo "Swap size is ${size}"
