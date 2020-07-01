#!/bin/bash -x
isFullTime=1;
isPartTime=2;
empRate=100;
randomCheck=$(( RANDOM % 3))
case "$randomCheck" in
      $isFullTime) workHrs=8 ;;
      $isPartTime) workHrs=4 ;;
      *) workHrs=0 ;;
esac
salary=$(( $empRate * $workHrs ))
echo $salary

