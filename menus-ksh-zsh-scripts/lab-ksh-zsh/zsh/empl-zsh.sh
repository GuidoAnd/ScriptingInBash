#!/bin/zsh

typeset -A lega
lega=(
	Jose	 "2134"
      	Maria	 "2313213"
     	Esteban	 "23134" 
	Marcos	 "2313"
      	Steve	 "1331"
     	Monica	 "23131" 
	Laura	 "3134" 
	Josefina "2313"
      	Marcelo	 "23235"
)

for VI in ${(k)lega}; do
    echo "El el empleado $VI, su numero de legajo asignado es: ${lega[$VI]}"
done
