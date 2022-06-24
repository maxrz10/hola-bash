#!/bin/bash

#aca probamos lo anterior pero con funciones

FILE="elimina*.txt"

# añado una soluc al conteo de la existencia del archivo, por si hay demasiados
# el "ls -1" con -1 te lista los archivos, uno por linea

PATHFILE="."
EXISTE () {
	if [ `ls -1 $PATHFILE/$FILE 2>/dev/null | wc -l ` -gt 0 ]; then
		return 0
	else
		return 1
	fi
	}

function ELIMINA {

	rm -f $FILE
}

# llamo a las funciones
EXISTE
FLAG=$(echo $?)

if [ "$FLAG" = 0 ]; then
	ELIMINA
	echo "se eliminaron los archivos $FILE"
	ls -l --color=auto
else
	exit 0
fi
