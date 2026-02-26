#!/bin/bash

# Sort all .txt files in a directory by size (smallest to largest)

echo "Please enter a directory:"
read directoryname

if [ -d "$directoryname" ]; then
  ls -lSr "$directoryname"/*.txt
else
  echo "Invalid directory"
fi
