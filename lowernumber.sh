#!/bin/bash

n1=1
n2=2
n3=3

if [ $n3 -lt $n1 ] && [ $n3 -lt $n2 ]; then
      echo "The number $n3 is the lowest."
	
elif [ $n2 -lt $n1 ] && [ $n2 -lt $n3 ]; then
        echo "The number $n2 is the lowest."

elif [ $n1 -lt $n2 ] && [ $n1 -lt $n3 ]; then
        echo "The number $n1 is the lowest."

fi

n4=2652
n5=12
n6=-23

if [ $n5 -gt $n4 ] && [ $n5 -gt $n6 ]; then
      echo "The number $n5 is the highest."

elif [ $n6 -gt $n4 ] && [ $n6 -gt $n5 ]; then
        echo "The number $n6 is the highest."

elif [ $n4 -gt $n5 ] && [ $n4 -gt $n6 ]; then
        echo "The number $n4 is the highest."

fi
		
