#!/bin/bash
# Skript määrab kasutaja vanuse põhjal, kas ta on laps, nooruk, täiskasvanu või senioor.

echo -n "Sisesta oma vanus: "
read vanus

if test "$vanus" -ge 0 -a "$vanus" -lt 11
then
    echo "Oled laps"
elif test "$vanus" -ge 11 -a "$vanus" -lt 18
then
    echo "Oled nooruk"
elif test "$vanus" -ge 18 -a "$vanus" -lt 63
then
    echo "Oled täiskasvanu"
elif test "$vanus" -ge 63
then
    echo "Oled senioor"
else
    echo "Vigane sisend"
fi
