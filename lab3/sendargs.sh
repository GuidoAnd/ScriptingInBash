#!/bin/bash
#Develop a script for testing where recive an arguments and comparing with them.


arg1=$1
arg2=$2
arg3=$3
arg4=$4
arg5=$5


#Showing a comparations with args.
if [ $arg1 == $arg2 ] && [ $arg3 == $arg4 ] && [ $arg1 == $arg5 ]; then
     echo "los argumentos son iguales."

else
     echo " Algunos o todos los argumentos ' $@ ' no son iguales."
    

fi    
