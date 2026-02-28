#!/bin/bash

# Challenge 4: Backup Script – backs up all .txt files to a timestamped folder

read -p "Enter source directory: " src

if [ ! -d "$src" ]; then
    echo "Source directory does not exist."
    exit 1
fi

timestamp=$(date +%Y-%m-%d_%H-%M)
backup_dir="backup_$timestamp"

mkdir -p "$backup_dir"

count=$(find "$src" -maxdepth 1 -type f -name "*.txt" | wc -l)

cp "$src"/*.txt "$backup_dir" 2>/dev/null

echo "Backup directory created: $backup_dir"
echo "Copying .txt files..."
echo "Backup complete! Files backed up: $count"
