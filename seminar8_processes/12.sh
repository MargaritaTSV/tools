#!/bin/bash
set -euo pipefail
if [ $# -ne 1 ]; then
  echo "Usage: $0 <n>" >&2
  exit 1
fi
n=$1
if ! [[ $n =~ ^[0-9]+$ ]] || [ "$n" -le 0 ]; then
  echo "n must be positive integer" >&2
  exit 1
fi
pids=()
reported=()
on_child() {
  for idx in "${!pids[@]}"; do
    pid=${pids[$idx]}
    if [ "${reported[$idx]:-0}" -eq 0 ]; then
      if ! kill -0 "$pid" 2>/dev/null; then
        echo "Child $((idx+1)) of $n is finished."
        reported[$idx]=1
      fi
    fi
  done
}
trap on_child CHLD
for i in $(seq 1 "$n"); do
  ./random_sleeper.sh &
  pids+=($!)
  reported+=(0)
done
for pid in "${pids[@]}"; do
  wait "$pid"
done

