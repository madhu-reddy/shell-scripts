#!/bin/bash 
myfunc() { 
arr=$1 
arr1=$@
echo "The first element of array: ${arr[*]}" 
echo "All elementsof array: ${arr1[*]}"
} 

my_arr=(1 2 3) 
myfunc ${my_arr[*]}

