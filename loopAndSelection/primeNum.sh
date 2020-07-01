#!/bin/bash -x
read -p "Enter number : " num;
i=2
while [ $i -lt $num ]
do
if [ $(( $num%$i )) -eq 0 ]
then
   echo "not prime"
exit
fi
i=$(( $i + 1 ))
done
echo "prime"
