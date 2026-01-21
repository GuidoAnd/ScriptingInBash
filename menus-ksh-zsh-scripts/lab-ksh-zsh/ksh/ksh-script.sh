#!/bin/ksh
#Mismo script al Menu dialog, adaptado a ksh


TMP=/tmp/req.$$

#dialog --title "Menu" --backtitle "Menu interactivo" --msgbox "Opciones disponibles" --menu "Mover con las teclas" 0 0 0 Copiar "Copia un archivo" Comprimir "Comprime un archivo" Borrar "Borra un archivo" 2> "$TMP"        

dialog --title "Menu" \
       --backtitle "Menu interactivo" \
       --menu "Mover con las teclas" 0 0 0 \
       Copiar "Copia un archivo" \
       Comprimir "Comprime un archivo" \
       Borrar "Borra un archivo" \
       2> "$TMP"
       #Descomprimir "Descomprime un .tar.gz" \

req=$(cat "$TMP")
       #KSH no permite "-" en el nombre de las funciones pero si el "_"
e_sg() {
	clear
	rm -f "$TMP"
        exit 1
}

case "$req" in

	Copiar)
		name="$1.copy.$$"
		if [[ -e "$name" ]]; then
			dialog --title "Aviso" --msgbox "El archivo que intentas copiar, ya existe en el directorio" 5 55
			e_sg
		elif [[ ! -e "$1" ]]; then
			dialog --title "Aviso" --msgbox "El archivo que intentas copiar, no existe" 5 45 
			e_sg
		else
			cp --update=none "$1" "$name"
		fi
		;;
	Comprimir)
		comp="$1.$$.tar.gz"
		if [[ -e "$comp" ]]; then
		    dialog --title "Aviso" --msgbox "El archivo que intentas comprimir, ya existe en el directorio" 5 55			e_sg
		elif [[ ! -e "$1" ]]; then
			dialog --title "Aviso" --msgbox "El archivo que intentas comprimir, no existe" 5 50
			e_sg
		else
			tar czf "$comp" "$1"			
		fi
		;;
	#Descomprimir)


	Borrar)
		dialog --title "Confirmacion"  --yesno "Estas seguro que quieres continuar?" 0 0
		seq=$?
		if ! [[ "$seq" == 0 ]];then
			e_sg
		fi

		if [[ -e "$1" ]]; then
			rm -f "$1"
		
		elif ! [[ -e "$1" ]]; then
			dialog --title "Aviso" --msgbox "El archivo que intentas eliminar, no existe" 5 50
			e_sg
		fi
		;;
esac


clear
rm -f "$TMP"
exit 0
