#!/bin/bash
############
# script para recuperar un archivo borrado
############

if [ -z "$1" ]; then
	exit 1
fi

papelera="$HOME/Documentos/adminServidores/practica/papelera"

if [ -f "$papelera/$1" ]; then
	mv "$papelera/$1" .
	echo "Archivo recuperado"
else
	echo "El archivo no existe"
	exit 1
fi
