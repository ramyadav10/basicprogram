#!/bin/bash

for (( i =0; i <10; i++ ))
do

array[$i]=$(( RANDOM % 900 + 100 ))

done
echo "${array[@]}"

length=${#array[@]}
for (( j=0; j<=$length; j++ ))
do
   for (( k=0; k<=$length-$j-1; k++ ))
   do
   if [ ${array[$k]} -gt ${array[$(( $k+1 ))]} ]
   then
   temp=${array[k]}
   array[$k]=${array[$(( $k+1 ))]}
   array[$(( $k+1 ))]=$temp
   fi
   done
done
echo "${array[@]}"
echo "${array[1]}"
echo "${array[8]}"
