#!/bin/bash
#898447, Alejaldre Martin, Hector, M, 3, B
#926915, Blanco Ramos, Nestor, M, 3, B

if [ $# -ne 1 ]
then
    echo "Sintaxis: practica2_3.sh <nombre_archivo>"
    exit 1
fi

archivo=$1

if [ ! -f "$archivo" ]
then
    echo "$archivo no existe"
    exit 1
fi

chmod ug+x "$archivo"

stat -c %A "$archivo"
