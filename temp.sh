#!/bin/bash

# Place your code here
 if [[ "$1" == *"C" ]]; then
   temp=$(echo "$1" | sed 's/C//')
   kelvins=$(("$temp + 273"))
   echo "${kelvins}K"
 elif [[ "$1" == *"K" ]]; then
   temp=$(echo "$1" | sed 's/K//')
   celsius=$(("$temp - 273"))
   echo "${celsius}C"
 fi
