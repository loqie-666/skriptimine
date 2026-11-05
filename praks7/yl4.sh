#!/bin/bash
# Valjastab kolmnurga, kus tarnide arv kasvab rea numbriga

read -p "Sisesta ridade arv: " read_arv

for (( i = 1; i <= read_arv; i++ ))
do
    for (( j = 1; j <= i; j++ ))
    do
        echo -n "* "
    done
    echo ""
done
