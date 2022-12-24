#!/bin/bash

# Place your code here
 if [[ "$1" == *"C" ]]; then
   temp=$(echo "$1" | sed 's/C//')
   kelvins=$(echo "$temp + 273" | bc)
   echo "${kelvins}K"
 elif [[ "$1" == *"K" ]]; then
   temp=$(echo "$1" | sed 's/K//')
   celsius=$(echo "$temp - 273" | bc)
   echo "${celsius}C"
 fi
