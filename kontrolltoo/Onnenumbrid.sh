#!/bin/bash

for (( arv = 1000; arv <= 9999; arv++ ))
do
    kopia=$arv

    while [ $kopia -gt 9 ]
    do
        summa=0

        while [ $kopia -gt 0 ]
        do
            summa=$(( summa + kopia % 10 ))
            kopia=$(( kopia / 10 ))
        done

        kopia=$summa
    done

    if [ $kopia -eq 7 ]
    then
        echo "$arv"
    fi
done
