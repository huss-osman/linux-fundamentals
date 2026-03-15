#!/bin/bash

lenght="$1" 
width="$2"

area=$((lenght * width))
perimeter=$((2 * (lenght + width)))

echo "Rectangle area: $area"
echo "Rectandle perimeter: $perimeter"
