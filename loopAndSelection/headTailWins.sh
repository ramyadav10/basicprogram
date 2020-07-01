#!/bin/bash
h=0
t=0
num=$(( RANDOM%50 + 25 ))
for (( i; i<$num; i++ ))
do
chk=$(( RANDOM%2 ))
if [ $chk == 1 ]
then
   if [ $h -lt 11 ]
   then
   h=$(( $h + 1 ))

      if [ $h == 11 ]
      then
      echo "Head wins with $h"
      break
      fi
   fi
else
   if [ $t -lt 11 ]
   then
   t=$(( $t + 1 ))

      if [ $t == 11 ]
      then
      echo "Tails wins with $t"
      break
      fi
   fi
fi
done
echo "h=$h ::::: t=$t"
