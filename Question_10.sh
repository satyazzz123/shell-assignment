#!/bin/bash

printf "%-30s %-10s\n" "File Name" "Size"
printf "%-30s %-10s\n" "---------" "----"

for file in "$HOME"/*; do
  if [ -f "$file" ]; then
    printf "%-30s %-10s\n" "$(basename "$file")" "$(stat -c%s "$file")"
  fi
done
