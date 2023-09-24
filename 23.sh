#! /bin/sh

echo "The date from system: $(date)"

day=$(date | awk '{print $3}')

if [ "$day" -eq 1 ] ; then
  echo "start backup the /etc/"
  tar -czvf "$(date +"%g%m%d")_etc.tar.gz" "compress" 
  mv  "$(date +"%g%m%d")_etc.tar.gz" "./bak" 
fi


# vim /etc/crontab 加入
# * * 1 * * root ./23.sh &
# 加入定时管理模块