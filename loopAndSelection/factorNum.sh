#!/bin/bash -x

read -p "Enter Number for Factorial : " num
res=1
for (( i=1 ; i <= $num ; i++ ))
do
res=$(( $res * $i ))
echo $res
done
