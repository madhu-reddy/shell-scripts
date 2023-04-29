#!/bin/bash

old_timestamp=$(aws s3 ls s3://madhu-bucket/madhu-file/ | awk '{print $1}')
new_timestamp=$(aws s3 ls s3://madhu-bucket/madhu-file1 | awk '{print $1}')

TDATE=$(date +"%Y-%m-%d")

if [[ $old_timestamp -eq $TDATE && $new_timestamp -eq $TDATE ]]
then
   echo "OK"
else
   echo "STALE"
fi
