#!/bin/bash

# Challenge 2: File Operations Script – creates bash_demo/, makes demo.txt, writes a dated line, then prints the file contents

mkdir -p bash_demo
cd bash_demo || exit 1

echo "This file was created by a Bash script on $(date +%Y-%m-%d)" > demo.txt

echo "Directory 'bash_demo' created."
echo "File 'demo.txt' created."
echo
echo "File contents:"
cat demo.txt
