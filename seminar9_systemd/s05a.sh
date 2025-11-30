#!/usr/bin/env bash
TARGET="/var/log/immortal.txt"
CONTENT="I am immortal"
while true; do
  if [ ! -f "$TARGET" ]; then
    echo "$CONTENT" > "$TARGET"
  else
    current="$(cat "$TARGET" 2>/dev/null)"
    if [ "$current" != "$CONTENT" ]; then
      echo "$CONTENT" > "$TARGET"
    fi
  fi
  sleep 5
done
