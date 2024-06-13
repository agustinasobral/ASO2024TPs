#!/bin/bash

# Genera un numero aleatorio entre 1 y 100
numero_aleatorio=$((RANDOM % 100 + 1))

# Inicializacion de la variable ingresada
intento=0

# Bucle que se repite hasta que se acierte el numero
while true; do

    read -p "Intenta adivinar el numero. Pista: El numero esta entre el 1 y el 100: " intento

    if [ "$intento" -lt "$numero_aleatorio" ]; then
        echo "El numero es demasiado bajo. Intenta nuevamente."
    elif [ "$intento" -gt "$numero_aleatorio" ]; then
        echo "El numero es demasiado alto. Intenta denuevo."
    else
        echo " Adivinaste el numero!: $numero_aleatorio"
        break
    fi
done
