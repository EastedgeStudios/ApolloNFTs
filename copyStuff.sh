#!/bin/sh

subtractAmount=186
for i in {190..229}
do
    cp metadata/CloakedCounselor.json "metadata/$i.json"
    sed -i'' -e "s/0/$(($i - $subtractAmount))/g" metadata/$i.json
done
