#!/usr/bin/bash

if [ $# -eq 1 ]
then
    read line < $1
    echo $line
    sed a\ nom.txt $line
else
    echo "Le nombre d'arguments est invalide"
    exit 1
fi