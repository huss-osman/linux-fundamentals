#!/bin/bash

# Count lines in a file entered by the user

echo "Please enter a file name:"
read filename

if [ -z "$filename" ]; then
  echo "No file provided"
elif [ -f "$filename" ]; then
  wc -l "$filename"
else
  echo "File does not exist"
fi
