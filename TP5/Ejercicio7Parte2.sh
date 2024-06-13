#!/bin/bash

# Solicita al usuario que ingrese un nombre
read -p "Ingrese un nombre: " nombre

# Hace una solicitud a la API
response=$(curl -s "https://api.genderize.io/?name=${nombre}")

# Extrae el genero del JSON de respuesta
genero=$(echo $response | jq -r '.gender')

# Muestra el genero encontrado
if [ "$genero" == "null" ]; then
    echo "El genero del nombre no se pudo descifrar $nombre."
else
    echo "El genero del nombre ingresado $nombre es: $genero."
fi