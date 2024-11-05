#!/bin/bash

echo "Argument 1: $1"
echo "Argument 2: $2"

if [ "$#" -gt 2 ]; then
  echo "ERROR: Too many arguments. Number of arguments: $#"
fi
