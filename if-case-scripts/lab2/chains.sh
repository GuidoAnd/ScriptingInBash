#!/bin/bash

chain1="Cheese"
chain2="Milk"
chain3=""

if [ $chain1 == $chain2 ]; then
      echo "The \$chain1 is equal to \$chain2"

elif [ $chain1 != $chain2 ]; then
        echo "The \$chain1 is different to \$chain2"
	

fi 



if [ -z $chain3 ]; then
      echo "The \$chain3 is void"

	 
elif [ -n $chain3 ]; then
	echo "The \$chain3 are filled"



fi
