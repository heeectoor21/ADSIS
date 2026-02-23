#!/bin/bash
#898447, Alejaldre Martin, Hector, M, 3, B
#926915, Blanco Ramos, Nestor, M, 3, B

for fich in "$@"
do
    if [ -f "$fich" ]
    then
        more "$fich"
    else
        echo "$fich no es un fichero"
    fi
done
