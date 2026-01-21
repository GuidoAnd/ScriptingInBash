#!/bin/bash

path=$1
files=$(ls $1 | wc -l) 
loop=$(seq 0 1 100)

salida_er() {
	clear
	exit 1
}


if [[ -d $1 ]];then 

     for i in $loop ;do 	
	  if ! [ $files == 0 ];then
	    
	    echo $i|dialog --gauge "Buscando" 0 0 0
          	 
          else
	      	dialog --title "Resultado"  --msgbox "Ningun archivo fue encontrado en: \n$1" 0 0
	     	salida_er
	  fi
     done

dialog --title "Cantidad de archivos encontrados"  --msgbox "Total en la ruta: $files" 6 40 --tab-correct    

else
	dialog --title "La ruta especificada, no existe." --msgbox  "\nVuelva a especificar la ruta, ejemplo: ./progress_dialog.sh /home/usuario/ " 0 0	
	salida_er
	

fi

clear
exit 1
