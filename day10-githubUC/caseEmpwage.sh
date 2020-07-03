#!/bin/bash
isFullTime=1;
isPartTime=2;
empRateHr=20;
totalSalary=0;
numWorkingDays=20;
for (( i=1; i<=$numWorkingDays; i++ ))
do
randomCheck=$(( RANDOM % 3))
case "$randomCheck" in
      $isFullTime) workHrs=8 ;;
      $isPartTime) workHrs=4 ;;
      *) workHrs=0 ;;
esac
salary=$(( $empRateHr * $workHrs ))
totalSalary=$(( $totalSalary+$salary ))
done
echo $totalSalary


