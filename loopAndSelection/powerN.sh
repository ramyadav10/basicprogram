#!/bin/bash -x
read -p " number :" n ;
res=0;
for (( i=0 ; i <=$n ; i++ ))
do
if [ $i == 0 ];
then
    res=1
else
    res=$(( $i * 2 ));
fi
echo "2 to the $i power is: $res"
done
