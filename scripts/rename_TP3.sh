#!/bin/bash
# Recorre recursivamente las carpetas dentro de ../TP y renombra las carpetas llamadas "TP3" a "tp3"

BASE="../TP"

find "$BASE" -depth -type d -name 'TP3' | while read -r dir; do
    parent=$(dirname "$dir")
    newdir="$parent/tp3"
    echo "Renombrando: $dir -> $newdir"
    mv "$dir" "$newdir"
done
