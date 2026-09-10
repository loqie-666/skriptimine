#!/bin/bash

# Skript arvutab, mitu küpsisepakki tuleb tordi valmistamiseks osta.

echo -n "Sisesta aluskandiku pikkus cm: "
read pikkus

echo -n "Sisesta aluskandiku laius cm: "
read laius

echo -n "Sisesta ühe küpsise suurus cm: "
read kusis

echo -n "Sisesta tordi kihtide arv: "
read kihid

echo -n "Mitu küpsist on ühes pakis: "
read pakis

kusiseid_pikkus=$(expr $pikkus / $kusis)
kusiseid_laius=$(expr $laius / $kusis)
uhel_kihil=$(expr $kusiseid_pikkus \* $kusiseid_laius)
kokku=$(expr $uhel_kihil \* $kihid)

pakid=$(expr $kokku / $pakis)
jaak=$(expr $kokku % $pakis)

if [ $jaak -gt 0 ]
then
    pakid=$(expr $pakid + 1)
fi

echo "Tordi valmistamiseks on vaja $kokku küpsist."
echo "Poest tuleb osta $pakid küpsisepakki."
