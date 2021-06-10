#! /bin/bash
if [ -z $1 ]
then
    echo "enter the amount in minutes"
    read COUNTER
else
    COUNTER=$1
fi

COUNTER=$(( COUNTER * 60 ))
minusone(){
        COUNTER=$(( COUNTER - 1 ))
        sleep 1
}
while [ $COUNTER -gt 0 ]
do
	echo $COUNTER Seconds Remaining
	minusone  	 	
done
[ $COUNTER = 0 ] && echo "time is up!"



