#!/bin/bash
#Testing iterations in a loop for

#Set array
list=("I" "II" "III" "IV" "V")
numbers=(1 2 3 4 5)
for i in "${list[@]}"; do
    ag="Group $i:"

        for li in "${numbers[@]}"; do

		if [[ $i == "III" && $li -ge 3 ]]; then
		break
		#echo "DEBUG → $ag" #Debug
                  
            	fi

            ag="$ag $li"
        done
        echo "$ag"
        #echo "Final --> $ag"   #Debug
done
