#/bin/bash

# voy a probar tener aca distintas cosas que se me ocurren para automatizar cosas
# como podria ser limpieza de logs


# saber si existe un archivo antes de borrarlo

FILE=log.txt
if [ -e $FILE ];then
	echo "si existe $FILE"
else
	echo "no existe"
fi

FILE1="elimina*.txt"
if [ -e $(echo $FILE1 | awk '{print $1}') ];then
        echo "procediendo a borrar.."
	rm -f $FILE1
else
        echo "no existe nada para borrar chicha"
fi
