#!/bin/bash

helpf()
{
echo "Debe escribir si/s o no/n"
sleep 1.5 
exit
}
echo "Opciones disponibles (Mostar fecha, usuarios conectados, carga del sistema y espacio utilizado)"
echo "..............................................................................................."
echo "Debe escribir si/s o no/n"
echo "........................."
echo "¿Desea saber la Fecha?"
read hola
case "$hola" in
si|s)
echo "Hoy es $(date)"
sleep 3
;;
no|n)
echo "Pasando a la siguiente opcion"
sleep 0.5
;;
*)helpf;;
esac

echo "¿Desea conocer los usuarios conectados?"
read hi
case "$hi" in
si|s)
echo "Estos son los usarios conectados: $(users)"
sleep 3
echo "......................................"
echo ".............................."
echo "........................."
echo "Pasando a la siguiente opcion"
;;
no|n)
echo "......................................"
echo ".............................."
echo "........................."
echo "Pasando a la siguiente opcion"
sleep 0.5
;;
*)helpf;;
esac

echo "¿Desea tener informacion sobre la carga del sistema?"
read nihao
case "$nihao" in
si|s)
echo "Esta es la carga del sistema: $(sudo dmesg | head -n 22)"
sleep 3
echo "......................................"
echo ".............................."
echo "........................."
echo "Pasando a la ultima opcion"
;;
no|n)
echo "......................................"
echo ".............................."
echo "........................."
echo "Pasando a la ultima opcion"
sleep 0.5
;;
*)helpf;;
esac

echo "¿Desea conocer el espacio disponible del dispositivo de almacenamiento principal?"
read konichiwa
case "$konichiwa" in
si|s)
echo "Este es el espacio disponible: "
echo "$(df -h /)"
sleep 3
echo "......................................"
echo ".............................."
echo "........................."
echo "Gracias por tu visita, vuelva pronto!"
;;
no|n)
echo "......................................"
echo ".............................."
echo "........................."
echo "Gracias por tu visita, vuelva pronto!"
sleep 0.1
;;
*)helpf;;
esac

