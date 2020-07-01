#!/bin/bash -x

array=('Sunday' 'Monday' 'Thuesday' 'Wednesday' 'Thurday' 'Friday' 'Satarday')
length=${#array[@]}
randomNum=$(( RANDOM % 7))
for (( i=0; i<${length}; i++))
do
   if [ $i -eq $randomNum ];
   then
      echo ${array[i]}
      break;
   fi
done
