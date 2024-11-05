#!/bin/bash

src_dir="$1"
dest1="destination1"
dest2="destination2"

mkdir -p "$dest1" "$dest2"

for item in "$src_dir"/*; do
  if [ -f "$item" ]; then
    mv "$item" "$dest1"
  elif [ -d "$item" ]; then
    mv "$item" "$dest2"
  fi
done
