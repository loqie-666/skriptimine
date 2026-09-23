#!/bin/bash
# Loendab 1 kuni 10 ja katkestab tsükli väärtusel 7.

for i in {1..10}
do
    if test "$i" -eq 7
    then
        echo "Tsükkel katkeb väärtusel 7."
        break
    fi

    echo "$i"
done
