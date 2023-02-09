#!/bin/bash

file="notas.txt"

if [ -f "$file" ]; then

  Num_Aprobados=0
  Num_Suspensos=0

  while read -r line; do
    nota=$(echo "$line" | cut -d ' ' -f 2)

    if [ "$nota" -ge 5 ]; then
      Num_Aprobados=$((Num_Aprobados + 1))
    else
      Num_Suspensos=$((Num_Suspensos + 1))
    fi
  done < "$file"

  echo "Hay $Num_Aprobados aprobados y $Num_Suspensos suspensos en el archivo $file"
else
  echo "El archivo $file no existe."
