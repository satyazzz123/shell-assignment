#!/bin/bash

file="$1"
if [[ "$file" =~ ^([a-zA-Z]+)([0-9]+)?(\.[a-zA-Z]+)$ ]]; then
  filename="${BASH_REMATCH[1]}"
  id="${BASH_REMATCH[2]}"
  echo "Filename: $filename"
  [[ -n "$id" ]] && echo "ID: $id"
fi

tac "$file" > "${file}.bak"
