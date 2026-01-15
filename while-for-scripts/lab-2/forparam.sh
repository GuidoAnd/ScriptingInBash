#!/bin/bash



read -rp "Escribe 1 paralabra: " palabra
while [[ $palabra != " " ]] ; do

	 
	 echo "$palabra"	
	 sleep 0.2
	 
	 read -rp " Para terminar la ejecucion, escribe 'listo': " salida
	 	 

	 if [[ $salida == "listo" ]]; then
	
	     echo "Saliendo..."
     	     break	     
 	     sleep 0.9
	      	 	   
	 fi
done

if [ $salida == "listo" ] ; then 

	exit 1

fi



