#!/bin/bash

# Check disk usage of a directory and alert if it exceeds a threshold

echo "Enter directory:"
read dir

echo "Enter size threshold in MB:"
read threshold

usage=$(du -sm "$dir" | awk '{print $1}')

if [ "$usage" -gt "$threshold" ]; then
  echo "ALERT: Disk usage exceeded! ($usage MB)"
else
  echo "Disk usage is within limit. ($usage MB)"
fi
