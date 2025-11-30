#!/bin/bash
trap 'echo I caught SIGINT' INT
trap 'echo I caught SIGTERM' TERM
trap 'echo I caught SIGHUP' HUP
trap 'echo I caught SIGTSTP' TSTP
trap 'echo I caught SIGCONT' CONT
i=0
while true; do
  echo "$i"
  sleep 2
  ((i += 1))
done
