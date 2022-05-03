#!/usr/bin/bash

if [ $# -eq 2 ]
then
    prod_tasks=$1
    conso_tasks=$2
elif [ $# -eq 1 ]
then
    prod_tasks=1
    conso_tasks=$1
else
    echo "Le nombre d'arguments est invalide"
    exit 1
fi

if test ! -e ./test
then
    mkfifo ./test
fi

if test -p ./test
then
    for i in $(seq 1 $prod_tasks)
    do
        ./producteur.sh > ./test >&1 &
    done

    for i in $(seq 1 $conso_tasks)
    do
        ./consommateur.sh < ./test >&1 &
    done
fi

wait
echo "tout les taches sont terminées"

