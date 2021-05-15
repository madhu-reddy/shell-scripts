#!/bin/bash

echo "Say something between Hai and whatsup, otherwise I will quit"
while true
    do
       read "Read_Input_Value" 
       case $Read_Input_Value" in
           Hai)	
                echo "You said Hai!"
                 ;;

           whatsup)
                echo "You said whatsup!"
                ;;

           *)
                echo "You said something, which is not either Hai or whatsup,  so i am quitting the case statement"
                exit 0
                ;;    
       esac
    done
echo ""
echo "------------------------------------"
 


