#!/bin/bash

#Para ejecutar ejemplo: ./menu.sh lista-de-compras.txt 

dialog --title "Menu" --backtitle "Menu interactivo" --msgbox "Opciones disponibles" 0 0  --menu "Mover con las teclas" 0 0 0 Copiar "Copia un archivo" Comprimir "Comprime un archivo" Borrar "Borra un archivo" 2> /tmp/req.$$
req=`cat /tmp/req.$$`
     
e-s0() { 
	clear
	rm -f /tmp/req.$$
	exit 1	
}

case $req in
	Copiar)
		name="$1.copy.$$"
	        if [[ -a $name ]]; then
	               dialog --title "Aviso" --msgbox "El archivo que intentas copiar, ya existe en el directorio" 0 0
		       e-s0
		elif ! [[ -a $1 ]]; then
		       dialog --title "Aviso" --msgbox "El archivo que intentas copiar, no existe" 0 0
	       	       e-s0	       
	       	else
		       cp --update=none $1 $name
		fi
	        ;;
	Comprimir)
		comp="$1.$$.tar.gz"
		if [[ -a $comp ]]; then
			dialog --title "Aviso" --msgbox "El archivo que intentas comprimir, ya existe en el directorio" 0 0
			e-s0 
		elif ! [[ -a $1 ]]; then
                       dialog --title "Aviso" --msgbox "El archivo que intentas comprimir, no existe" 0 0
                       e-s0
		else
			tar czf $1.$$.tar.gz $1
		fi
		;;
	Borrar)
		dialog --title "Confirmacion"  --yesno "Estas seguro que quieres continuar?" 0 0
		seq=$?
		if ! [[ $seq == 0 ]];then
			e-s0
		fi
		
		if [[ -a $1 ]]; then
			rm -f $1
		
		
		elif ! [[ -a $1 ]]; then
			dialog --title "Aviso" --msgbox "El archivo que intentas eliminar no existe" 0 0
			e-s0
                fi
		;;
	
	
esac

clear
rm -f /tmp/req.$$
exit 0

