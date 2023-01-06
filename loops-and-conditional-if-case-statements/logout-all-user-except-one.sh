#!/bin/bash

logged_in_users=$(w | awk '!/USER|[0-9][0-9]:[0-9][0-9]:[0-9][0-9]/ {print $1}')

for user in $logged_in_users  #dont use double quotes for the variable here, as it prevents fields spiltting

do

    if [[ $user != "madhu" ]]

    then

    	pkill -KILL -u "$user"

    fi

    continue

done
