#!/bin/bash

# Bonus: System Monitor Script – shows system stats and saves to log

timestamp=$(date +%Y-%m-%d_%H-%M-%S)
logfile="system_report_$timestamp.log"

{
echo "===== System Report ($timestamp) ====="
echo

echo "CPU Usage:"
top -bn1 | grep "Cpu"

echo
echo "Memory Usage:"
free -h

echo
echo "Disk Usage:"
df -h

echo
echo "Top 5 Processes by Memory:"
ps aux --sort=-%mem | head -n 6

} | tee "$logfile"

echo
echo "Report saved to $logfile"
