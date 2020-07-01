#!/bin/bash
read -p "Enter Number : " n
num=$n
rev=0

while [ $n != 0 ]
do
rem=$(( $n % 10 ))
rev=$(( $rev * 10 + $rem))
n=$(( $n / 10 ))
done

if [ $num == $rev ]
then
echo "The number is palindrome"
else
echo "Not palindrome"
fi
