#!/bin/bash
#898447, Alejaldre Martin, Hector, M, 3, B
#926915, Blanco Ramos, Nestor, M, 3, B

echo "Introduzca el nombre del fichero: "
read fich

if [ ! -e "$fich" ]
then 
	echo "$fich no existe"
else
	permisos=$( stat -c %A $fich )
	echo -n "Los permisos del archivo $fich son: "
	echo "$permisos" | cut -c 2-4
fi

