#!/bin/bash

blue_timestamp=$(aws s3 ls s3://oce-bucket-blue/origin-conf-file/ | awk '{print $1}')
green_timestamp=$(aws s3 ls s3://oce-bucket-green/origin-conf-file/ | awk '{print $1}')

TDATE=$(date +"%Y-%m-%d")

if [[ $blue_timestamp -eq $TDATE && $green_timestamp -eq $TDATE ]]
then
   echo "OK"
else
   echo "STALE"
fi
