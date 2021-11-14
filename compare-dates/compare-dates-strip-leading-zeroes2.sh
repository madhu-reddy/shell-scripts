#! /bin/bash -e
set -x
TDATE=2021-08-08
TDATE1=$(echo $TDATE | sed 's/\<0//g')
echo $TDATE1
MDATE=2021-07-07
MDATE1=$(echo $MDATE | sed 's/\<0//g') 
echo $MDATE1
if [[ $MDATE1 < $TDATE1 ]]; then
   echo "OK"
   exit 0
else
   echo "FAILED"
   exit 1
fi
