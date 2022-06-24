#!/bin/bash

#aca probamos lo anterior pero con funciones

FILE="elimina*.txt"

EXISTE () {
	if [ -e $(echo $FILE | awk '{print $1}') ]; then
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
