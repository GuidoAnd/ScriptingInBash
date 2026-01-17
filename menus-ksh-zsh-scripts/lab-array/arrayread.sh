#!/bin/bash

declare -A familia_animal
mascotas=`cat aitem.txt`

echo "Lectura de array asociativo"

familia_animal=([Felidae]="Leon" [Elephantidae]="Elefante" [Odobénidos]="Morza" [Felidae]="Tigre" [Ursidae]="Oso" [Simiiformes]="Mono")

for f in "${!familia_animal[@]}" ; do

	echo "$f: ${familia_animal[$f]}"

done

echo "--------------------------------------------------"

echo "Lectura de archivo por variable"

for t in $mascotas;do
     echo "$t"
done


echo "--------------------------------------------------"

echo "Lectura de archivo por parametro"



pm=$1

if [[ $1 == "" ]]; then
      echo "Debes ingresar el nombre del archivo"
      echo "Ejemplo de ejecucion: ./arrayread.sh aitem.txt"
      exit 1
fi

for s in $(cat $pm);do
	echo "$s"
done

