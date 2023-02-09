#!/bin/bash

if [ "$#" -eq 1 ]; then
  Nombre=$1

  notas=$(grep "$Nombre" notas.txt | awk '{print $3}')

  if [ -n "$notas" ]; then
    Todo_Aprobado=1

    while read -r nota; do
  
      Calificacion=$(./d.sh "$nota")

      if [ "$Calificacion" == "Suspendido" ]; then

        todo_aprobado=0

        break
      fi
    done <<< "$notas"

    if [ "$Todo_Aprobado" -eq 1 ]; then
      echo "$Nombre tiene todo aprobado."
    else
      echo "$Nombre no tiene todo aprobado."
    fi
  else
    echo "No se encontraron notas para $Nombre."
  fi
else
  echo "Se debe proporcionar un parámetro: nombre."
fi