#!/bin/bash

prepend="$1"
append="$2"
file="$3"

while read -r line; do
  echo "${prepend}${line}${append}"
done < "$file" > "${file}.tmp" && mv "${file}.tmp" "$file"
