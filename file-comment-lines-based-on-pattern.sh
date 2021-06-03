#!/bin/bash

#ingore comment lines, empty lines
data=$(cat /etc/resolv.conf | grep -v \# | grep .)

#check for the presence of strings "127" and "option" in any line in the data variable
if [[ $data =~ 127.0.0.1 && $data =~ option ]]    

then

#sed  '/^#/!s/^/#/' /etc/resolv.conf

#ignore commented lines and add a # to beginning of every line which is not commented
sudo sed -i '/^#/!s/^/#/' /etc/resolv.conf

#echo "nameserver 192.168.10.4\nsearch mylearningsguru.com"

#appending 2 lines at the bottom of the script, -e option for echo is for recognizing new line character (\n)
echo -e "nameserver 192.168.10.4\nsearch mylearningsguru.com" | sudo tee -a /etc/resolv.conf

fi 


