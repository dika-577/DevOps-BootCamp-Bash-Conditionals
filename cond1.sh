#!/bin/bash

IFS=',' read -r -a array <<< "$1"

#Write your code here
arr=(${1//,/ })

sum=0

for i in "${arr[@]}"; do
  if [[ $(($i % 2)) == 0 ]]; then
    sum=$(($sum + $i))
  fi
done

# print the sum
echo $sum
