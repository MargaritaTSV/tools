#!/bin/bash
./counter.sh > a.txt &
child_pid=$!
parent_pid=$(ps -o ppid= -p $$ | tr -d ' ')
parent_cmd=$(ps -o cmd= -p "$parent_pid")
self_pid=$$
self_cmd=$(ps -o cmd= -p "$self_pid")
child_cmd=$(ps -o cmd= -p "$child_pid")
echo "Parent PID: $parent_pid"
echo "Parent CMD: $parent_cmd"
echo "Self PID: $self_pid"
echo "Self CMD: $self_cmd"
echo "Child PID: $child_pid"
echo "Child CMD: $child_cmd"

