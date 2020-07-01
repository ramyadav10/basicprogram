number=128
#one way of doing it
#in this senario length of the 128 is 3 so it will print hundred 
case ${#number} in 
    1)
    echo "unit";;
    2)
    echo "tens";;
    3)
    echo "hundreds";;
    4)
    echo "thousand";;
    *)
    echo "no";;
esac
