#!/bin/bash -x

   a=$(( RANDOM % 900 + 100 ))
   b=$(( RANDOM % 900 + 100 ))
   c=$(( RANDOM % 900 + 100 ))
   d=$(( RANDOM % 900 + 100 ))
   e=$(( RANDOM % 900 + 100 ))
randomN=($a $b $c $d $e)
max=${randomN[0]}
min=${randomN[0]}

for i in ${randomN[@]}
do
     if [ $i -gt $max ]
     then
        max="$i"
     fi

     if [ $i -lt $min ]
     then
        min="$i"
     fi
done
echo "The Maximum number is $max"
echo "The Minimum number is $min"
