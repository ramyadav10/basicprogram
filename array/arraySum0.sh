#!/bin/bash

arr=(1 -5 4)
sum=0

for i in ${arr[@]}
do
    sum=$(( $sum + $i ))
done

echo $sum
