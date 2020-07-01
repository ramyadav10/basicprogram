#!/bin/bash -x

month=$1
date=$2

#to check whether the user has enter the input or not
if [ ! -z $month ] && [ ! -z $date ]
then
#switch statement
# ${month,,} to convert my string to lowercase
case ${month,,} in
    #this will only execute when user enter march
    "march")
        # to check the date is greater than 20 and less than 31
        if [ $date -gt 20 ] && [ $date -le 31 ]
        then
            echo "True";
        else
            echo "False";
        fi
        ;;
    #till here
    #this will execute when user enter april
    "april")
        echo "True";;
    #till here
    "may")
        echo "True";;
     #this will execute when user enter june
    "june")
        #checking date is lesser than or equal to 20
        if [ $date -le 20 ]
        then
            echo "True";
        else
            echo "False";
        fi
        ;;
     #till here
     #when user enter other than above four month this case will get executed
    *)
        echo "False";;
    esac
else
    echo "month or day is not provided";
fi
