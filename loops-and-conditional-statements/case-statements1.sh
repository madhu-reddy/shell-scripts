#!/bin/bash

#echo "Enter a digit"
#read   #default "read" command will save the value read in to "REPLY" variable

#Above two lines combined in to a single line, using -p option with read command
read -p "Enter a digit"   #default "read" command will save the value read in to "REPLY" variable.
#To save read value to a variable, then we have to use, read -p "Enter a digit" varname

case $REPLY in
   bc)
   echo "this is a";;

   b)
   echo "this is b";;

   c)
   echo "this is c";;

esac
