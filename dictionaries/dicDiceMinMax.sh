#!/bin/bash

declare -A diceNum
diceNum[1]=0
diceNum[2]=0
diceNum[3]=0
diceNum[4]=0
diceNum[5]=0
diceNum[6]=0

for (( i=0; i< 100; i++ ))
do
ranChk=$(( RANDOM % 6 + 1 ))
echo "$ranChk"
diceNum[$ranChk]=$(( ${diceNum[$ranChk]} + 1 ))

   if [ ${diceNum[$ranChk]} == 10 ]
   then
   echo "---------------------"
   break
   fi
done
echo "dice counts is ${!diceNum[@]} is :::: ${diceNum[@]}"
echo "---------------------"
echo "$ranChk :: wins first"
echo "---------------------"
echo "---------------------"
diceMin=${diceNum[1]}
diceMax=${diceNum[1]}

for i in ${diceNum[@]}
do
   if [ $i -lt $diceMin ]
   then
      diceMin=$i
   fi
   if [ $i -gt $diceMax ]
   then
      diceMax=$i
   fi
done
echo "Maximum numbers ::$diceMax"
echo "Minimum mumbers ::$diceMin"
