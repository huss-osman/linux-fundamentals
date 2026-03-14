#!/bin/bash

search_logs() {
    local search_term="$1"
    grep "$search_term" logs.txt | awk '{ print $2 }'
}

search_logs "ERROR"
