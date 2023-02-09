#!/bin/bash


if [ "$#" -eq 2 ]; then

  Nombre=$1
  Modulo=$2


  nota=$(grep "$Nombre $Modulo" notas.txt | awk '{print $3}')


  if [ -n "$nota" ]; then

    Calificacion=$(./d.sh "$nota")

    # Mostramos el resultado
    echo "$Nombre ha obtenido un $Calificacion en el módulo $Modulo."
  else
    echo "No se encontró una nota para $Nombre en el módulo $Modulo."
  
else
  echo "Se deben proporcionar dos parámetros: nombre y módulo."
