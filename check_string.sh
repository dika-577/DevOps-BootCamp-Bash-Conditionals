#!/bin/bash

# Place your code here

letters=0
numbers=0
symbols=0


input_string=$1


for ((i=0; i<${#input_string}; i++)); do
  char=${input_string:i:1}

  # Check if the character is a letter
  if [[ "$char" =~ [a-zA-Z] ]]; then
    letters=$((letters+1))
  # Check if the character is a number
  elif [[ "$char" =~ [0-9] ]]; then
    numbers=$((numbers+1))
  #chek if the character is a whitespace
  elif [[ "$char" =~ [" "] ]]; then
   true
  # Otherwise, it must be a symbol
  else
    symbols=$((symbols+1))
  fi
done


echo "Numbers: $numbers Symbols: $symbols Letters: $letters"

