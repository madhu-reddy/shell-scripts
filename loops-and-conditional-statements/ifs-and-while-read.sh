#!/bin/bash
#set -x
while read x y z
do
   if [ -z $z ]
   then
       echo "the value of variable z is empty because the default value of IFS is a space"
   else
       echo "the value of variable z is $z"
   fi

done < $1

#file1 contains
#3 4 5
#6 7 8


#file2 cotains
#3,4 5
#6,7 8


#How to run the program
#./ifs-and-while-read.sh file1
#output (because the default IFS is a space, for first row 3 is assigned to x, 4 is assigned to y, 5 is assigned to z and same goes with second row, so 8 is assigned to z from the second row)
#5
#8



#./ifs-and-while-read.sh file2
#output (will be empty, because the default IFS is a space, for first row 3,4 is assigned to x and 5 is assigned to y but nothing is assigned to z and same goes with second row)

