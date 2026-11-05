#!/bin/bash

export LC_NUMERIC=C
if [ $# -ne 3 ]; then
    echo "Kasutus: $0 A B C"
    exit 1
fi
a=$1
b=$2
c=$3
if [ "$(echo "($a) == 0" | bc -l)" -eq 1 ]; then
    echo "A ei tohi olla 0"
    exit 1
fi
d=$(echo "($b)*($b) - 4*($a)*($c)" | bc -l)
if [ "$(echo "$d < 0" | bc -l)" -eq 1 ]; then
    echo "Reaalarvulisi lahendeid ei ole"
elif [ "$(echo "$d == 0" | bc -l)" -eq 1 ]; then
    x=$(echo "(0 - ($b)) / (2*($a))" | bc -l)
    printf "x = %.5f\n" "$x"
else
    s=$(echo "sqrt($d)" | bc -l)
    x1=$(echo "(0 - ($b) + $s) / (2*($a))" | bc -l)
    x2=$(echo "(0 - ($b) - $s) / (2*($a))" | bc -l)
    printf "x1 = %.5f\n" "$x1"
    printf "x2 = %.5f\n" "$x2"
fi
