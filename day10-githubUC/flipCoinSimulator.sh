#!/bin/bash
h=0
t=0
num=$(( RANDOM%50 + 50 ))
for (( i; i<$num; i++ ))
do
chk=$(( RANDOM%2 ))
if [ $chk == 1 ]
then
   if [ $h -lt 21 ]
   then
   h=$(( $h + 1 ))

      if [ $h == 21 ]
      then
      echo "Head wins with $h"
		diff=$(( $h - $t ))
		echo "Head wins with $diff point from Tail"
      break
      fi
   fi
else
   if [ $t -lt 21 ]
   then
   t=$(( $t + 1 ))

      if [ $t == 21 ]
      then
      echo "Tails wins with $t"
		difff=$(( $t - $h ))
		echo " Tail wins with $difff point from Head"
      break
      fi
   fi
fi
done
echo "h=$h ::::: t=$t"
