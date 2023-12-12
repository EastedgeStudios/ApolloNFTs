#!/bin/sh

subtractAmount=226
for i in {230..269}
do
    cp metadata/CoreyJenkins.json "metadata/$i.json"
    sed -i'' -e "s/0/$(($i - $subtractAmount))/g" metadata/$i.json
done
