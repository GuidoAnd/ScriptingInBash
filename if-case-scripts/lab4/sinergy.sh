#!/bin/bash
# Develop a script with sinergy with other script.
SCRIPTFILE="holamundo.sh"
NAME="holamundo"


if [ $SCRIPTFILE == ${NAME}.sh ] && [ -a $SCRIPTFILE ]; then
      echo "Si existe el script $NAME."
      bash ${NAME}.sh
else 
      echo "No existe el script"

fi
