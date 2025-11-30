#!/bin/bash
while true; do
  if [ ! -f /var/log/immortal.txt ] || [ "$(cat /var/log/immortal.txt 2>/dev/null)" != "I am immortal" ]; then
    echo "I am immortal" > /var/log/immortal.txt
  fi
  sleep 5
done

