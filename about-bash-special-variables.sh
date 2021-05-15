#!/bin/bash

echo arguments passed: $1 $2 $3 $4
echo total arguments passed: $#
echo status of last above command: $? 
echo process id of current shell: $$
echo ""
echo ""
echo 'All about $*, "$*", $@, "$@" and differences between them'? 
echo ""

echo "Printing \$* without double quotes"
for argument in $*
do    
        echo argument is: $argument
done

echo ""

echo 'Printing "$*" with double quotes'
for argument in "$*"
do    
        echo argument is: $argument
done

echo ""

echo "Printing \$@ without double quotes"
for argument in $@
do    
        echo argument is: $argument
done

echo ""

echo 'Printing "$@" with double quotes'
for argument in "$@"
do
        echo argument is: $argument
done
