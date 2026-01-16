#!/bin/bash


for i in `seq 1 5`; do
    ag="Bucle $i:"

	for li in `seq 1 5`; do
	
	    if (( li == 3 )); then
		ag="$ag $li"
		#echo "DEBUG → $ag" #Debug
		break $1
	    fi

	    ag="$ag $li"
	done
	echo "$ag"
	#echo "Final --> $ag"	#Debug
done


