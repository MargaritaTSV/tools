#!/bin/bash
sleep 1000 &
sleep_pid=$!
bash -c 'while true; do sleep 1; done' &
loop_pid=$!
kill -STOP "$loop_pid"
echo "Sleeping PID: $sleep_pid"
echo "Stopped PID: $loop_pid"

