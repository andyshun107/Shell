#! /bin/sh
is_directory()
{
# check whether it is dir
# to call
if [ $# -ne 1 ]; then
  echo "you are nuts! we only support one argument!"
  return 1
fi 

if [ ! -d "$1" ]; then 
  echo "it is not a directory"
  return 1
else 
  echo "it is directory"
  return 0
fi
}

if is_directory "$1"; then
  echo "you are right!"
else 
  echo "you are nuts: $1xxx"
fi

echo "test1"

