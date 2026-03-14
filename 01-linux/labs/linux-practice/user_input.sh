#!/bin/bash

greet() {
    local name=

    if [ $# -eq 0 ]; then
      echo "what is your name?"
      read name
    else
      name="$1"
    fi

   echo "Hello, $name!"
}

greet "Osman"
