#!/bin/bash
#set -xe
# using "test" command
if $(test -f /etc/hosts -a -r /etc/hosts); then 
   echo "file is regular file and is readable" 
else 
   echo "not regular file and not readable"
fi

#using built-in single square brackets
if [ -f /etc/hosts -a -r /etc/hosts ];then
   echo "file is regular file and is readable"
else
   echo "not regular file and not readable"
fi
