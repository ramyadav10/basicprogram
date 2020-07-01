#!/bin/bash -x

read -p "Enter year in YYYY format:" year
ans=$(( $year % 4 ))

if [ $ans -eq 0 ];
then
    echo "Leap Year"
else
    echo "Not a Leap Year"
fi
