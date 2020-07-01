#!/bin/bash
#initializing empty array
declare -A birthDate
#using counter to store value based on index
janCount=0
febCount=0
marCount=0
aprCount=0
mayCount=0
junCount=0
julCount=0
augCount=0
sepCount=0
octCount=0
novCount=0
decCount=0
for ((i=0; i<50; i++))
do
    randomMonth=$((RANDOM%12+1))
    case $randomMonth in
    1)
        #at first jan count is 0 so it will store in 0th index
        #storing value in another array
        #if u like to see what is inside this array in each itration plz print and check it out
        janArray[$janCount]="person$i"
        #incrementing counter
        janCount=$(($janCount+1))
        #creating key as jan and storing the values in birthDate array
        birthDate["jan"]=${janArray[@]};;
    2)
        febArray[$febCount]="person$i"
        febCount=$(($febCount+1))
        birthDate["feb"]=${febArray[@]};;
   3)
        marArray[$marCount]="person$i"
        marCount=$(($marCount+1))
        birthDate["mar"]=${marArray[@]};;
   4)
        aprArray[$aprCount]="person$i"
        aprCount=$(($aprCount+1))
        birthDate["apr"]=${aprArray[@]};;
   5)
        mayArray[$mayCount]="person$i"
        mayCount=$(($mayCount+1))
        birthDate["may"]=${mayArray[@]};;
   6)
        junArray[$junCount]="person$i"
        junCount=$(($junCount+1))
        birthDate["jun"]=${junArray[@]};;
   7)
        julArray[$julCount]="person$i"
        julCount=$(($julCount+1))
        birthDate["jul"]=${julArray[@]};;
   8)
        augArray[$augCount]="person$i"
        augCount=$(($augCount+1))
        birthDate["aug"]=${augArray[@]};;
   9)
        sepArray[$sepCount]="person$i"
        sepCount=$(($sepCount+1))
        birthDate["sep"]=${sepArray[@]};;
   10)
        octArray[$octCount]="person$i"
        octCount=$(($octCount+1))
        birthDate["oct"]=${octArray[@]};;
   11)
        novArray[$novCount]="person$i"
        novCount=$(($novCount+1))
        birthDate["nov"]=${novArray[@]};;
   12)
        decArray[$decCount]="person$i"
        decCount=$(($decCount+1))
        birthDate["dec"]=${decArray[@]};;
esac
done
#for displaying data
read -p "which month data do you need from 1-12 : " userMonth
case $userMonth in
1)
    echo "Jan ${birthDate["jan"]}" ;;
2)
    echo "feb ${birthDate["feb"]}" ;;
3)
    echo "mar ${birthDate["mar"]}" ;;
4)
    echo "apr ${birthDate["apr"]}" ;;
5)
    echo "may ${birthDate["may"]}" ;;
6)
    echo "jun ${birthDate["jun"]}" ;;
7)
    echo "Jul ${birthDate["jul"]}" ;;
8)
    echo "aug ${birthDate["aug"]}" ;;
9)
    echo "sep ${birthDate["sep"]}" ;;
10)
    echo "oct ${birthDate["oct"]}" ;;
11)
    echo "nov ${birthDate["nov"]}" ;;
12)
    echo "dec ${birthDate["dec"]}" ;;
esac
