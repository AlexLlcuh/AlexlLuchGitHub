#!/bin/bash
file=file "Matriculas.txt"

if [ -f "$file" ]; then
  num_Matriculas=$(wc -l < "$file")
  echo "Hay $num_Matriculas matrículas en el archivo $file"
else
  echo "El archivo $file no existe."