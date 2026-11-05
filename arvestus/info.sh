#!/bin/bash
# Autor: Kevin Inginen-Tõšuk
# Skripti nimi: info
# Ulesanne: tervitab sisselogitud kasutajat ning valjastab
#           praeguse kuupaeva ja kellaaja

# $USER sisaldab sisselogitud kasutaja nime
echo "Tere, $USER!"

# date käsuga võetakse praegune kuupäev ja kell
kuupaev=$(date +%d.%m.%Y)
kell=$(date +%-H:%M)

echo "Täna on $kuupaev kell $kell"
