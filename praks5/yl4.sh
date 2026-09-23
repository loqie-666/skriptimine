#!/bin/bash
# Skript võtab süsteemist praeguse kellaaja ja tervitab kasutajat nime järgi.

aeg=$(date +%H)

if test "$aeg" -ge 6 -a "$aeg" -lt 12
then
    echo "Tere hommikust, $USER!"
elif test "$aeg" -ge 12 -a "$aeg" -lt 18
then
    echo "Tere päevast, $USER!"
elif test "$aeg" -ge 18 -a "$aeg" -lt 22
then
    echo "Tere õhtust, $USER!"
else
    echo "Head ööd, $USER!"
fi
