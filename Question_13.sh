#!/bin/bash

dir="$1"
file_count=$(find "$dir" -type f | wc -l)
dir_count=$(find "$dir" -type d | wc -l)

echo "Files: $file_count"
echo "Directories: $dir_count"
