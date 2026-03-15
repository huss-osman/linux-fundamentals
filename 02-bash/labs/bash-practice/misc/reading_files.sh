#!/bin/bash

read_file() {
    local file_path="$1"

    while IFS= read -r line; do
        echo "$line"
    done < "file_path"
}

read_file "./log.txt"
