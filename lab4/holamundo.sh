#!/bin/bash
#Wait to execution in another script and the exit code 0, for runnning this. 

output="sinergy.sh"
#output=$(./sinergy.sh)
STATUS=$?

if [[ $STATUS != 1 ]]; then
		
	echo "Hola mundo, hoy es el $(date)"

else 
	echo "Error: exit code 1"
fi
		
