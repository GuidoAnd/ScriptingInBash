ARG1=$1
STATUS="status"
START="start"
STOP="stop"

if [ $ARG1 == $STATUS ]; then
      echo "el servicio esta habilitado"

elif [ $ARG1 == $START ]; then
      echo "el servicio se esta iniciando"

elif [ $ARG1 == $STOP ]; then
      echo "el servicio se esta apangado"

else
      echo "no existe el servicio $1"

fi

