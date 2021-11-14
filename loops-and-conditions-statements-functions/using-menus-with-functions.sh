#!/bin/bash 

to_lower() { 
input="$1" 
output=$( echo $input | tr [A-Z] [a-z]) 
echo $output 
} 

find_date() { 
command="date"
$command  #just run the command, dont return the output as we are capturing the output in the function call 
} 

show_cal() { 
if [ -x /usr/bin/ncal ] ; then 
command="/usr/bin/ncal -w" 
else 
command="/usr/bin/cal" 
fi 
$command  #just run the command, dont return the output as we are capturing the output in the function call
} 

while true 
do 
clear 
echo "Choose an item: a, b or c" 
echo "a: Display Date" 
echo "b: Display Calender" 
echo "c: exit" 
read -sn1 
REPLY=$(to_lower "$REPLY")   #this steps uses "to_lower() to lowercase the letters so that the input we give can be case insensitive (like A,a or B,b, or C,c)
case "$REPLY" in
a) find_date;; 
b) show_cal;; 
c) exit 0;;
esac 
read -n1 -p "Press any key to continue" 
done 
