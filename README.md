# SriptingInBash
## The firsts scripts in Bash.
------------------------------------------------------------------------------------------------------------------------
**The following steps to code, verify and execute a script:**

1. Code with VIM editor. 
2. Give the execution permitions
3. Verify
4. Run the script "$ ./nameofscript.sh" 

-----------------------------------------------------------------------------------------------------------------------

### Script with IF statement:   

#### 1 LAB: Example:

**Develop a script that compare three numbers for returning the lower number and the highest number.**



1. *$vim lowernumber.sh 


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


2. *$ sudo chmod 755 lowernumber.sh*
   
'755' this flag gives complete permission set to run a script..


3. *$ cat lowernumber.sh 
     ...
     ..
     .   

   *$ ls -l lowernumber.sh
      rwxr-xr-x 1 x x 357 Jan  7 13:16 lab2/chains.sh


4. $ ./lowernumber.sh


Output:

**The number 1 is the lowest.**

------------------------------------------------------------------------------------------------------------------------

