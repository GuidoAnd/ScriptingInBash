#!/bin/bash
#Develop a script to show the numbers one until thirdty, except these numbers are divisibles for two and three. 
#[[ $(( $i % 2 )) -eq 0 ]]
for i in $(seq 1 30); do
	
	if [[ "$(echo "($i/2)*2" | bc)" -eq $i ]]; then
	      continue 	
	fi
	
	if [[ $((i % 3)) -eq 0 ]]; then
	       continue	
	fi

	echo "Number: $i"
	


done

# Another ways:
# [[ "$(echo "($i/3)*3" | bc)" -eq $i ]]
# (( i % 3 == 0 ));

