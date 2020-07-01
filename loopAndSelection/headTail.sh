#!/bin/bash -x

head=1;
coin=$(( RANDOM % 2 ))
if [ $coin -eq $head ]
then
   echo "Heads"
else
   echo "Tails"
fi
