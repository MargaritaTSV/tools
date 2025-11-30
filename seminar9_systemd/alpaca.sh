#!/bin/bash
log_file=/var/log/alpaca.txt
date >> "$log_file"
echo "Started $(date)" >> "$log_file"
sleep 30
echo "Finished $(date)" >> "$log_file"

