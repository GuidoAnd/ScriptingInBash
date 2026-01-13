#!/bin/bash

file=`cat planets.txt`
lf=1
for i in $file; do

   echo "$lf°: $i"
   lf=`echo $(($lf + 1))`

done
