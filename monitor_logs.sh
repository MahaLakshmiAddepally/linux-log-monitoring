#!/bin/bash

LOG_FILE=$1

if [ -z "$LOG_FILE" ]; then
  echo "Usage: ./monitor_logs.sh <logfile>"
  exit 1
fi

echo "Monitoring log file for ERROR and WARN messages..."

grep -i "error\|warn" "$LOG_FILE"
