#!/bin/bash
#898447, Alejaldre Martin, Hector, M, 3, B
#926915, Blanco Ramos, Nestor, M, 3, B

dir_existente=$(ls -d ~/bin??? 2>/dev/null | xargs -I {} stat -c "%n,%Y" {} 2>/dev/null | sort -t, -k2 -n | head -1 | cut -d, -f1)

if [ -z "$dir_existente" ]
then
    destino=$(mktemp -d ~/binXXX)
    echo "Se ha creado el directorio $destino"
else
    destino=$dir_existente
fi

echo "Directorio destino de copia: $destino"

contador=0
for fich in ./*
do
    if [ -x "$fich" ]
    then
        cp "$fich" "$destino"
        echo "$fich ha sido copiado a $destino"
        contador=$((contador + 1))
    fi
done

if [ $contador -eq 0 ]
then
    echo "No se ha copiado ningun archivo"
else
    echo "Se han copiado $contador archivos"
fi
