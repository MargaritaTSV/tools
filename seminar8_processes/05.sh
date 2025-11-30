#!/bin/bash
set -euo pipefail
show_lineage() {
  local pid=$1
  local cmd ppid
  cmd=$(ps -o cmd= -p "$pid")
  echo "PID: $pid CMD: $cmd"
  ppid=$(ps -o ppid= -p "$pid" | tr -d ' ')
  if [ "$ppid" != "0" ] && [ "$pid" != "$ppid" ]; then
    show_lineage "$ppid"
  fi
}
if [ $# -ne 1 ]; then
  echo "Usage: $0 <PID>" >&2
  exit 1
fi
show_lineage "$1"

