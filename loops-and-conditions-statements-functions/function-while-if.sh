#!/bin/bash
set -x 

your_name () 

{ 

input="$1" 

#output is a global variable (since we did not use "local" keyword before "outout") and thus can be accessed outside the function.
output=$(echo $input | grep -i ^s) 
} 


while true
do
 
read -p "Enter c to continue or q to exit:" 

#accessing the function
your_name "$REPLY" 

#output variable defined inside the function being accessed the functio.
if [[ $output =~ s+ ]] ; then 

break 

fi 

done 

echo "Finished" 
