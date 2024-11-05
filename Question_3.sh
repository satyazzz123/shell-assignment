#!/bin/bash

logfile="error.log"

if ! [[ "$1" =~ ^-?[0-9]+$ && "$2" =~ ^-?[0-9]+$ ]]; then
  echo "ERROR: Both arguments must be integers."
  echo "ERROR: Both arguments must be integers." >> "$logfile"
  exit 1
fi

addition() {
  echo "Result: $(($1 + $2))"
}

addition "$1" "$2"
