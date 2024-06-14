#!/bin/bash

# Solicita al usuario que ingrese un nombre
read -p "Ingrese un nombre: " nombre

# Hace una solicitud a la API
respuesta=$(curl -s "https://api.genderize.io/?name=${nombre}")

# Extrae el genero del JSON de respuesta
genero=$(echo $respuesta | jq -r '.gender')

# Traduce el genero del ingles al español
if [ "$genero" == "male" ]; then
    genero_traducido="masculino"
elif [ "$genero" == "female" ]; then
    genero_traducido="femenino"
else
    genero_traducido="desconocido"
fi

# Muestra el genero encontrado
if [ "$genero" == "null" ]; then
    echo "El genero del nombre no se pudo descifrar para $nombre."
else
    echo "El genero del nombre ingresado $nombre es: $genero_traducido."
fi