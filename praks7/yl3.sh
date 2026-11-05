#!/bin/bash
# Valjastab tuhja ristkuliku raami tarnidest

read -p "Sisesta ridade arv: " read_arv
read -p "Sisesta tarnide arv reas: " tarne_arv

for (( i = 1; i <= read_arv; i++ ))
do
    for (( j = 1; j <= tarne_arv; j++ ))
    do
        if [ $i -eq 1 ] || [ $i -eq $read_arv ] || [ $j -eq 1 ] || [ $j -eq $tarne_arv ]
        then
            echo -n "* "
        else
            echo -n "  "
        fi
    done
    echo ""
done
