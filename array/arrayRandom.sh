#!/bin/bash -x

for (( i =0; i <10; i++ ))
do

array[$i]=$(( RANDOM % 900 + 100 ))

done
echo "${array[@]}"
