#!/bin/bash

# This script checks if hero.txt exists in the Arena directory and prints a message accordingly

if [ -f "Arena/hero.txt" ]
then
    echo "Hero found!"
else 
    echo "Hero missing!"
fi
