#! /bin/bash -e
set -x
TDATE=2021-08-08
TDATE_EPOCH=$(date -d "$TDATE" +"%s")
MDATE=2021-07-07
MDATE_EPOCH=$(date -d  "$MDATE" +"%s") 
if [[ $MDATE_EPOCH < $TDATE_EPOCH ]]; then
   echo "OK"
   exit 0
else
   echo "FAILED"
   exit 1
fi
