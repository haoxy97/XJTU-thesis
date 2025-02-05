#!/bin/bash

cd $(dirname "$(dirname "$(dirname "$(readlink -f "$0")")")")

rm -f main.charcnt

for file in Main_Spine/*.tex; do
  echo "\\input $file" >> main.charcnt
done

for file in Main_Miscellaneous/*.tex; do
  echo "\\input $file" >> main.charcnt
done

texcount main.charcnt -merge -char -sum
rm -f main.charcnt
