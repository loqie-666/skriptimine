#!/bin/bash

ajutine=$(mktemp)
kokku=0
while [ $kokku -lt 5 ]
do
    arv=$(( RANDOM % 50 + 1 ))
    if ! grep -qx "$arv" "$ajutine"
    then
        echo "$arv" >> "$ajutine"
    fi
    kokku=$(wc -l < "$ajutine")
done
numbrid=$(sort -n "$ajutine" | paste -sd' ')
tulemus="$(date '+%d.%m.%Y %H:%M') - $numbrid"
rm -f "$ajutine"
echo "1) Kuva terminalis"
echo "2) Salvesta faili"
read -p "Tee oma valik (1 või 2): " valik
case $valik in
    1)
        echo "$tulemus"
        ;;
    2)
        echo "$tulemus" >> tulemused.txt
        echo "Salvestatud faili tulemused.txt"
        ;;
    *)
        echo "Vale valik, sisesta 1 või 2"
        ;;
esac
