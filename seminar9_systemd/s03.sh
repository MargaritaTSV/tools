#!/bin/bash
while true; do
  echo "$(date) CPU $(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5); printf "%.2f", usage}') MEM $(free -m | awk '/Mem:/ {printf "%d/%dMB", $3, $2}')" >> /var/log/mylog.log
  sleep 30
done

