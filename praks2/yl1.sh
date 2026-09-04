#!/bin/bash
#Tervitamine kasutajaga

echo -n "Tere, "
nimi=$(whoami)
nimi="$(tr '[:lower:]' '[:upper:]' <<< ${nimi:0:1})${nimi:1}"
echo -n "$nimi"
echo "!"
