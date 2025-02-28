#!/bin/bash
############
# script para borrar un archivo
############

if [ -z "$1" ]; then
	exit 1
fi

papelera="$HOME/Documentos/adminServidores/practica/papelera"

if [ -f "$1" ]; then 
	mv "$1" "$papelera/"
	echo "Archivo eliminado"
else
	echo "El archivo no existe"
	exit 1
fi
