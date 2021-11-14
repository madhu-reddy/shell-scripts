#!/bin/bash
factorial() {
local x=$1
if [ $x -eq 1 ];then
echo 1
else
local var=$(( $x - 1 ))
echo $(( $x * $(factorial $var) ))
fi
}
x=$(factorial 5)
echo $x
