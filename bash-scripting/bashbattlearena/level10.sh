#!/bin/bash

# Create Arena_Boss with 5 random-sized files, sort them by size, and move files containing 'Victory' to Victory_Archive

mkdir -p Arena_Boss
mkdir -p Victory_Archive

for i in {1..5}; do
  file="Arena_Boss/file$i.txt"
  lines=$((RANDOM % 11 + 10))
  > "$file"

  for j in $(seq 1 "$lines"); do
    echo "Line $j" >> "$file"
  done
done

ls -lSr Arena_Boss/file*.txt

for f in Arena_Boss/*.txt; do
  if grep -q "Victory" "$f"; then
    mv "$f" Victory_Archive/
  fi
done
