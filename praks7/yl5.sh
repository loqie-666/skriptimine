#!/bin/bash
# Valjastab kolmnurga, kus vasakul on o-d ja paremal tarnid

read -p "Sisesta ridade arv: " read_arv

for (( i = 1; i <= read_arv; i++ ))
do
    for (( j = 1; j <= read_arv; j++ ))
    do
        if [ $j -le $(( read_arv - i )) ]
        then
            echo -n "o "
        else
            echo -n "* "
        fi
    done
    echo ""
done
