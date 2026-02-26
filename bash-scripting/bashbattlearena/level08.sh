#!/bin/bash

# Search all .log files for a word and display matching filenames

echo "Enter word to search:"
read word

if [ -z "$word" ]; then
  echo "No search term provided"
  exit 1
fi

if grep -l "$word" *.log; then
  exit 0
else
  echo "No matches found"
  exit 1
fi
