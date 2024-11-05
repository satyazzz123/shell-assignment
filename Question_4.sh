#!/bin/bash


calculate() {
  case $1 in
    +) echo "Result: $(($2 + $3))" ;;
    -) echo "Result: $(($2 - $3))" ;;
    \*) echo "Result: $(($2 * $3))" ;;
    /) echo "Result: $(($2 / $3))" ;;
    *) echo "Invalid operation" ;;
  esac
}

while true; do
  read -p "Enter operation (+, -, *, /): " operation
  if [[ "$operation" == "+" || "$operation" == "-" || "$operation" == "*" || "$operation" == "/" ]]; then
    calculate "$operation" "$1" "$2"
    break
  else
    echo "Invalid input. Please enter +, -, *, or /."
  fi
done
