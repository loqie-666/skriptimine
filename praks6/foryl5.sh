#!/bin/bash
# Jagab stringi semikooloni järgi eraldi sõnadeks.

text="koer;kass;hiir"

IFS=';'

for sona in $text
do
    echo "$sona"
done
