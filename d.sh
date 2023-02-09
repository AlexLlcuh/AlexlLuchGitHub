#!/bin/bash


if [ "$#" -eq 1 ]; then
  Nota=$1

  if [ "$Nota" -lt 5 ]; then
    echo "Suspendido"
  elif [ "$Nota" -ge 5 ] && [ "$Nota" -lt 8 ]; then
    echo "Aprobado"
  else
    echo "Sobresaliente"
  
else
  echo "Se debe proporcionar una nota como parámetro."
