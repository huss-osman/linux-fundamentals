#!/bin/bash

# Monitor a directory for file changes (create, modify, delete)
# Requires: inotifywait (install with: sudo apt install inotify-tools)

echo "Enter directory to monitor:"
read dir

inotifywait -m -e create -e modify -e delete "$dir" |
while read event file; do
  echo "$(date) - $event $file" >> changes.log
done
