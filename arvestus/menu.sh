#!/bin/bash
# Autor: Kevin Inginen-Tõšuk
# Skripti nimi: menu
# Ulesanne: valjastab menuu, kysib valikut ja
#           valjastab valitud roa kirjelduse

# Menüü väljastamine
echo "1) liha ja kartulid"
echo "2) kala ja krõpsud"
echo "3) supp ja salat"

# Kasutaja valiku sisestamine
read -p "Tee oma valik (1 või 2 või 3): " valik

# case kontrollib sisestatud numbrit
case $valik in
    1)
        echo "Väga maitsev, aga jälgi oma tervist!"
        echo "Head isu!"
        ;;
    2)
        echo "Brititoit on maitsev!"
        echo "Head isu!"
        ;;
    3)
        echo "Nii tervislik ja igav..."
        echo "Head isu!"
        ;;
    *)
        echo "Vale valik, sisesta 1, 2 või 3"
        ;;
esac
