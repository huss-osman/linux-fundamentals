#!/bin/bash

age=18
grade=85

if [ $age -gt 18 ]; then
   echo "You are eligible based on age."
   if [ $grade -ge 80 ]; then
   echo "You are eligible based on grade."
   echo "Congrats! You are eligible for the scholarship!"
else
   echo "Sorry, your grade is not high enough."
fi 
else
   echo "Sorry, you are not eligible!"
fi
