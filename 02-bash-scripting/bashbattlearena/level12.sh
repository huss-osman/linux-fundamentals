#!/bin/bash

# Read KEY=VALUE config file and print each key-value pair

while IFS='=' read -r key value; do
  echo "Key: $key | Value: $value"
done < config.txt
