#!/bin/bash
# Väljastab kõik süsteemi kasutajanimed failist /etc/passwd.

for kasutaja in $(cut -d: -f1 /etc/passwd)
do
    echo "$kasutaja"
done

