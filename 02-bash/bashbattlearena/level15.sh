#!/bin/bash

# Menu script to run system tasks including disk check, uptime, Arena backup (keep last 3), and config parser

while true; do
  echo "Choose an option:"
  echo "1) Check disk space"
  echo "2) Show system uptime"
  echo "3) Backup Arena (keep last 3)"
  echo "4) Parse settings.conf"
  echo "5) Exit"
  read choice

  case $choice in
    1)
      df -h
      ;;
    2)
      uptime
      ;;
    3)
      mkdir -p backups
      timestamp=$(date +%Y%m%d_%H%M%S)
      tar -czf "backups/arena_$timestamp.tar.gz" Arena
      ls -1t backups/arena_*.tar.gz | tail -n +4 | xargs -r rm
      ;;
    4)
      if [ -f settings.conf ]; then
        while IFS='=' read -r key value; do
          echo "Key: $key | Value: $value"
        done < settings.conf
      else
        echo "settings.conf not found"
      fi
      ;;
    5)
      exit 0
      ;;
    *)
      echo "Invalid option"
      ;;
  esac

  echo ""
done
