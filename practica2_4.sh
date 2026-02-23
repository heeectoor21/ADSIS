#!/bin/bash
#898447, Alejaldre Martin, Hector, M, 3, B
#926915, Blanco Ramos, Nestor, M, 3, B

echo -n "Introduzca una tecla: "
read -n 1 tecla
echo

if [[ "$tecla" =~ [a-zA-Z] ]]
then
    echo "$tecla es una letra"
elif [[ "$tecla" =~ [0-9] ]]
then
    echo "$tecla es un numero"
else
    echo "$tecla es un caracter especial"
fi
