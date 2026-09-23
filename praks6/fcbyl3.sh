#!/bin/bash
# Pesastatud tsüklid, mis katkestatakse mõlemad väärtusel 5.

for i in 1 2 3
do
    echo "Välimine tsükkel: $i"

    for j in 1 2 3 4 5
    do
        echo "  Sisemine tsükkel: $j"

        if test "$j" -eq 5
        then
            echo "  Sisemine tsükkel jõudis väärtuseni 5."
            echo "  Katkestan mõlemad tsüklid."
            break 2
        fi
    done
done

echo "Pärast tsükleid."
