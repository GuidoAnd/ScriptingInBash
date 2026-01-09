helpf()
{
echo "Posibles opciones"
echo "Debe escribir si o no"
}
echo "¿Desea eliminar todo?"
read hola
case "$hola" in
si|s)
echo "Borrando /"
;;
no|n)
echo "Vuelva cuando este decidido"
;;
*)helpf;
esac
