#!/bin/bash
#898447, Alejaldre Martin, Hector, M, 3, B
#926915, Blanco Ramos, Nestor, M, 3, B

echo -n "Introduzca el nombre de un directorio: "
read dir

if [ ! -d "$dir" ]
then
    echo "$dir no es un directorio"
    exit 1
fi

num_files=$(ls -l "$dir" | grep -v ^d | grep -v ^total | wc -l)
num_dirs=$(ls -l "$dir" | grep ^d | wc -l)

echo "El numero de ficheros y directorios en $dir es de $num_files y $num_dirs, respectivamente"
