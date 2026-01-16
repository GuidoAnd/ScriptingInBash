#!/bin/bash
# Para ejecutar este script le debemos pasar el parametro en la ejecucion ejemplo: 
# "./numfactorial.sh 2"

#&& [[ $# -gt 10 ]]
if [[ $1 -lt 2 ]]; then
   echo "El numero ingresado debe ser entre 2 y 10"
   exit 1
fi

if [[ $1 -gt 10 ]]; then
	echo "El numero ingresado debe ser entre 2 y 10"
	exit 1
fi

if ! [[ $1 =~ ^[0-9]+$ ]]; then
	echo "El dato ingresado debe ser numerico"
	exit 1
fi

n=$1
producto=1
for ((i=1; i<=n; i++)); do
  producto=$((producto * i))
done

echo -e "El factorial de \e[48m$n \e[0mda como resultado: \e[1m$producto \e[0m"
