#!/bin/bash
# Kysib ridade arvu ja tarnide arvu reas, valjastab ristkuliku

read -p "Sisesta ridade arv: " read_arv
read -p "Sisesta tarnide arv reas: " tarne_arv

for (( i = 1; i <= read_arv; i++ ))
do
    for (( j = 1; j <= tarne_arv; j++ ))
    do
        echo -n "* "
    done
    echo ""
done
