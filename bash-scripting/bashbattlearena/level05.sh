#!/bin/bash

#!/bin/bash

# Create Battlefield with files, move knight.txt to Archive if it exists, then list both directories

mkdir -p Battlefield
cd Battlefield
touch knight.txt sorcerer.txt rogue.txt

mkdir -p ../Archive

if [ -f knight.txt ]; then
  mv knight.txt ../Archive/
fi

cd ..
ls Battlefield Archive



