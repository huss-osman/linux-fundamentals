#!/bin/bash

# Challenge 1: Basic Arithmetic Calculator – takes two numbers and performs +, -, ×, ÷ (handles division by zero)

echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

# Check if inputs are empty
if [ -z "$num1" ] || [ -z "$num2" ]; then
    echo "Error: Both numbers are required."
    exit 1
fi

echo
echo "Results:"

echo "$num1 + $num2 = $((num1 + num2))"
echo "$num1 - $num2 = $((num1 - num2))"
echo "$num1 × $num2 = $((num1 * num2))"

# Handle division by zero
if [ "$num2" -eq 0 ]; then
    echo "$num1 ÷ $num2 = Cannot divide by zero"
else
    echo "$num1 ÷ $num2 = $((num1 / num2))"
fi
