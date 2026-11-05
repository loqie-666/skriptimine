#!/bin/bash
# Autor: Kevin Inginen-Tõšuk
# Skripti nimi: kujund
# Ulesanne: kysib ridade arvu ja valjastab kolmnurga,
#           kus tarnide arv igal real väheneb ühe võrra

read -p "Sisesta ridade arv: " read_arv

# Välimine tsükkel käib läbi read
for (( i = 1; i <= read_arv; i++ ))
do
    # Sisemine tsükkel: esimesel real on read_arv tärni,
    # igal järgmisel real üks vähem
    for (( j = 1; j <= read_arv - i + 1; j++ ))
    do
        echo -n "* "
    done
    echo ""
done
