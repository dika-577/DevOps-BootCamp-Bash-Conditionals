#!/bin/bash

IFS=',' read -r -a array <<< "$1"

#Write your code here


sum=0

for i in "${array[@]}"; do
  if [[ $(($i % 2)) == 0 ]]; then
    sum=$(($sum + $i))
  fi
done

# print the sum
echo $sum
