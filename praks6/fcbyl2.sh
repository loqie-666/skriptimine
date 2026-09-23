#!/bin/bash
# Küsib kasutajalt numbreid kuni nulli sisestamiseni.
# Negatiivsed arvud jäetakse continue abil vahele.

for (( ; ; ))
do
    echo -n "Sisesta number: "
    read number

    if test "$number" -eq 0
    then
        echo "Programm lõpetab."
        break
    fi

    if test "$number" -lt 0
    then
        echo "Negatiivne arv jäetakse vahele."
        continue
    fi

    echo "Sisestasid positiivse arvu: $number"
done
