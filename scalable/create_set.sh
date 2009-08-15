#!/bin/bash

inkscape_command="/c/Inkscape/inkscape.exe --shell"
path_to_source=$1

exec $inkscape_command

for file in $(ls $1); do

  -e -w 16 -h 16  "$path_to_source/../16x16/$file.png" "$path_to_source/$file"
  
done
