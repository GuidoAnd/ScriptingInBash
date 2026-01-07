# SriptingInBash
## The firsts scripts in Bash.
------------------------------------------------------------------------------------------------------------------------
**The following steps to code, verify and excute a script:**

1. Code with VIM editor. "$ vim nameofscript.sh"
2. Verify in bash with: "$ cat nameofscript.sh"
3. Give the excution permitions "$ sudo chmod +x nameofscript.sh"
4. Run the script "$ ./nameofscript.sh" 

-----------------------------------------------------------------------------------------------------------------------

### Scripts with IF: 

#### 1 LAB: 

**Develop a script that compare three numbers and return the lower number.**



1. $ cat lowernumber.sh 

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



2. $ ./lowernumber.sh
Output:
The number 1 is the lowest.

------------------------------------------------------------------------------------------------------------------------





