#!/bin/bash -x
read -p "Enter the range : " num1 num2;
while [ $num1 -le $num2 ]
do
i=2
flag=1
   while [ $i -lt $num1 ]
   do
   if [ $(( $num1%$i )) -eq 0 ]
   then
      flag=0
   break
   else
   i=$(( $i + 1 ))
   fi
   done

   if [ $flag -eq 1 ]
   then
      echo $num1
   fi
num1=$(($num1 + 1 ))
done
