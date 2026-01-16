#!/bin/bash
# This script prints only the numbers that it are divisible for two or three
for i in $(seq 1 30); do
	
	if (( ($i % 2 == 0) + ($i % 3 == 0) )); then
		echo $i
		
	fi
done
