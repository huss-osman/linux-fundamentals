#!/bin/bash

# Challenge 3: File Checker with Permissions – prompts for filename and checks existence + permissions

read -p "Enter filename to check: " file

if [ -e "$file" ]; then
    echo "File '$file' exists."

    [ -r "$file" ] && echo "✓ File is readable" || echo "✗ File is not readable"
    [ -w "$file" ] && echo "✓ File is writable" || echo "✗ File is not writable"
    [ -x "$file" ] && echo "✓ File is executable" || echo "✗ File is not executable"
else
    echo "File '$file' does not exist."
fi
