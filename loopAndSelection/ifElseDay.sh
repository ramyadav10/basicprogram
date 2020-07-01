#!/bin/bash -x

array=('zero' 'one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine')
length=${#array[@]}
randomNum=$(( RANDOM % 10))
for (( i=0; i<${length}; i++))
do
	if [ $i -eq $randomNum ];
	then
   	echo ${array[i]}
   	break;
	fi
done
