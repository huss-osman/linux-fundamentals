#!/bin/bash

# Simple menu script to run basic system tasks

while true; do
  echo "Choose an option:"
  echo "1) Check disk space"
  echo "2) Show system uptime"
  echo "3) List users"
  echo "4) Exit"
  read choice

  case $choice in
    1) df -h ;;
    2) uptime ;;
    3) cut -d: -f1 /etc/passwd ;;
    4) exit 0 ;;
    *) echo "Invalid option" ;;
  esac

  echo ""
done
