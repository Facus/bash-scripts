#!/bin/bash
# Script en Bash creado por Facus
#      <facundo@podhead.com.ar>
#
# Comprobar si un programa está instalado en sistemas GNU/Linux

if [ -z $1 ]; then
	echo "Error!"
	echo "Uso: $0 [Nombre de Programa a ser Comprobado]"
	echo "Ejemplo: $0 nautilus"; exit 1;
fi

if [ -x /usr/bin/$1 ] || [ -x /usr/sbin/$1 ] || [ -x /bin/$1 ] || [ -x /sbin/$1 ]; then
	echo "El programa \"$1\" está instalado. =D"
else
	echo "\"$1\" no está instalado. :("
	exit 1;
fi
exit 0;
