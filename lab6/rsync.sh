#!/bin/bash

#Importando variables seteadas en .profile
source ~/.profile

#Creando nuevas variables con las variables del .profile (como el path del directorio local, remoto y la address delserver remoto)
SRC=$sourcedir
DST=$DESTrsync
log="verify.log"
RMT=$REMOTE



#Comprobando si el servidor remoto recibe peticiones y esta conectado a la red.

if ssh root@"$RMT" ! ping -c 3 $RMT > /dev/null 2>&1; then

        echo "El servidor no recibe las peticiones"

fi

#  Verificando si existen ambos directorios local y remoto

if [[ ! -d $SRC ]] && ssh root@"$RMT" "[ ! -d '$DST' ]"; then
	
	echo "ERROR: El directorio no existe" | tee -a "$log"

fi

# Copiando el directorio local hacia el remoto
echo "Iniciando copia con rsync..." | tee -a "$log"
rsync -av -e "ssh -i /root/.ssh/rsync" "$SRC" root@"$RMT":"$DST" >> "$log" 2>&1
	
# comprobando si la salida de rsync (el ultimo proceso ejecutado) es 0 "true" 
if [[ $? -eq 0 ]]; then	
	echo "funciono correctamente" 
else 
	echo "No funciono correctamente"

fi	
