#!/bin/bash
if [ "$1" == "" ]; then
  echo "Usage: $0 <large_icon.png>"
  echo "  Resizes the large icon into several smaller icons for iOS"
  exit -1
fi

filename="$1"
filename_no_extension="${filename%.*}"

for size in 20 29 40 58 60 76 80 87 120 152 167 180; do
  input="${filename}"
  output="${filename_no_extension}_${size}.png"
  convert "${input}" -resize "${size}x${size}" "${output}"
done
