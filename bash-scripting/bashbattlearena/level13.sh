#!/bin/bash

# Backup a directory to a destination and keep only the last 5 backups

echo "Enter directory to backup:"
read src

echo "Enter backup destination:"
read dest

timestamp=$(date +%Y%m%d_%H%M%S)
backup_name="backup_$timestamp.tar.gz"

mkdir -p "$dest"

tar -czf "$dest/$backup_name" "$src"

ls -1t "$dest"/backup_*.tar.gz | tail -n +6 | xargs -r rm
