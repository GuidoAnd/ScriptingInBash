#!/bin/bash

n1=1
n2=2
n3=3

if [ $n3 -lt $n1 ] && [ $n3 -lt $n2 ]; then
	echo "$n3 this number is the lowest"
	
elif [ $n2 -lt $n1 ] && [ $n2 -lt $n3 ]; then
        echo "$n2 this number is the lowest"

elif [ $n1 -lt $n2 ] && [ $n1 -lt $n3 ]; then
        echo "$n1 this number is the lowest"

fi
		
