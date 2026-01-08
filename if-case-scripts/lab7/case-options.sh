#!/bin/bash

helpf()
{
echo "Posibles opciones (Mostar fecha, usuarios conectados, carga del sistema y espacio utilizado)"
echo "Debe escribir si o no"
}
echo "¿Desea saber la Fecha?"
read hola
case "$hola" in
si|s)
echo "Hoy es $(date)"
;;
no|n)
echo "Pasando a la siguiente opcion"
;;
esac

echo "¿Desea conocer los usuarios conectados?"
read hi
case "$hi" in
si|s)
echo "Estos son los usarios conectados: $(users)"
;;
no|n)
echo "Pasando a la siguiente opcion"
;;
esac

echo "¿Desea tener informacion sobre la carga del sistema?"
read nihao
case "$nihao" in
si|s)
echo "Esta es la carga del sistema: $(sudo dmesg | head -n 22)"
;;
no|n)
echo "Pasando a la ultima opcion"
;;
esac

echo "¿Desea conocer el espacio disponible del dispositivo de almacenamiento principal?"
read hola
case "$hola" in
si|s)
echo "Este es el espacio disponible: $(df -h /)"
echo "......................................"
echo ".............................."
echo "........................."
echo "Gracias por tu visita, vuelva pronto!"
;;
no|n)
echo "Gracias por tu visita, vuelva pronto!"
;;
*)helpf;;
esac

