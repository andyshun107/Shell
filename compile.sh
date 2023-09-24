
count=0

if [ $# -ne 1 -a -d "$1" ] ; then
   echo "Usage $(basename "$0") arg1" >&2
   exit 1
fi 

for file in "$1"/*.c
do
  #  gcc -o "$file" "$(basename $file .c)"
    echo "file=$file"
    echo "$(basename "$file" ".c")"
done

echo "$count files have been added with bak"

#echo "root's bins: $(find ./ -user root -type f | xargs ls -l | sed -n '/-..x/p' | wc -l)"

count=0
for loop in { "orange red blue grey", "werewr" }
do
  echo -n "This is the color $loop"
  count=$((count + 1))
done

echo "count = $count"

netstat -apn | grep sshd | sed -n 's/.*:\([0-9]*\) .* \([0-9]*\)\/sshd/\1 \2/p'

netstat -apn | grep sshd | sed -n 's/.*:\([0-9]*\) \t.* \([0-9]*\)\/sshd/\1 \2/p'

netstat -apn | grep sshd | sed -n 's/.*:\([0-9]*\) .* \([0-9]*\)\/sshd/\1 \2/p'

netstat -apn | grep sshd | sed -n 's/.*:\([0-9]*\)\t.*\t\([0-9]*\)\/sshd/\1 \2/p'

