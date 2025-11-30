#!/usr/bin/env bash
now="$(date)"
cpu_load="$(awk "{print $1}" /proc/loadavg)"
mem_used="$(free -m | awk "/Mem:/ {print $3}")"
echo "$now CPU:$cpu_load MEM:${mem_used}MB" >> /var/log/mylog2.log
