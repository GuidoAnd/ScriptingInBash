#!/bin/bash

# Script for making a simple calculations in bash.

# Integer/flaot checker funtion

# Title
echo "Welcome to a minimalist calculator"
sleep 0.5



# funtions
is_number() {
    local value="$1"

    #check floats, ints positives and negatives
    if [[ "$value" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
        return 0
    else
        return 1
    fi
}


helpfunc()
{
	echo "Error: You must put only a number option between 1-5"
	sleep 1.5
	printf "%*s\n" "$(tput cols)" "" | head -n "$(tput lines)"
	exec "$0"
}	

echo "Choose an action:"
echo "1) Make an addition"
echo "2) Make a subtraction"
echo "3) Make a multiplication "
echo "4) Make a division "
echo "5) Exit"
read -rp "Enter choice [1-5]: " choice   
if is_number "$choice"; then
	true
else
	helpfunc
fi

case "$choice" in
	1)
		read -rp "Enter the fist number/s that you want to make an addition: " sum1
		read -rp "Enter the other number/s: " sum2
		if is_number "$sum1" && is_number "$sum2"; then
		     #use bc, because bash don't support float
		     #numbers.
		     sumt=$(echo "scale=4; $sum1 + $sum2" | bc)
		     #sumt=$((sum1 + sum2)) only ints
		     echo "The result is: $sumt"
		     exit 0
		else
		     echo "The input is not a number."
		     exit 1
		fi
	;;
	2)
		read -rp "Enter the fist number/s that you want to make a subtraction: " sub1
		read -rp "Enter the other number/s: " sub2
                if is_number "$sub1" && is_number "$sub2"; then
                     #use bc, because bash don't support float
                     #numbers.
                     subt=$(echo "scale=4; $sub1 - $sub2" | bc)
                     #sumt=$((sub1 - sub2)) only ints
                     echo "The result is: $subt"
		     exit 0
                else
                     echo "The input is not a number."
                     exit 1
                fi
	;;
	3)
                read -rp "Enter the fist number/s that you want to make a multiplication: " mul1
                read -rp "Enter the other number/s: " mul2
                if is_number "$mul1" && is_number "$mul2"; then
                     #use bc, because bash don't support float
                     #numbers.
                     mult=$(echo "scale=4; $mul1 * $mul2" | bc)
                     #sumt=$((sub1 - sub2)) only ints
                     echo "The result is: $mult"
                     exit 0
                else
                     echo "The input is not a number."
                     exit 1
                fi
       ;;
       4)
		
	        read -rp "Enter the fist number/s that you want to make a division: " div1
                read -rp "Enter the other number/s: " div2
                if is_number "$div1" && is_number "$div2"; then
                     #use bc, because bash don't support float
                     #numbers.
                     divt=$(echo "scale=4; $div1 / $div2" | bc)
                     #divt=$((div1 - div2)) only ints
                     echo "The result is: $divt"
                     exit 0
                else
                     echo "The input is not a number."
                     exit 1
                fi
   
       ;;
       5)
	      exit 0
       ;;



esac
