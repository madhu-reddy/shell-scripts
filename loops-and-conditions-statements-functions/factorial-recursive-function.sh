#!/bin/bash 
set -x
calc_factorial() { 
if [ $1 -eq 1 ] 
then 
echo 1 
else 
var=$(( $1 - 1 )) 
res=$(calc_factorial $var) 
echo $(( $res * $1 )) 
fi 
} 

read -p "Enter a number: " val 
factorial=$(calc_factorial $val) 
echo "The factorial of $val is: $factorial" 

