#!/usr/bin/env bash
while true; do
  now="$(date)"
  cpu_load="$(awk "{print $1}" /proc/loadavg)"
  mem_used="$(free -m | awk "/Mem:/ {print $3}")"
  echo "$now CPU:$cpu_load MEM:${mem_used}MB" >> /var/log/mylog.log
  sleep 30
done
