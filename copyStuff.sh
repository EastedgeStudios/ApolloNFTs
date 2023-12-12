#!/bin/sh

subtractAmount=346
for i in {350..389}
do
    cp metadata/PupWrangler.json "metadata/$i.json"
    sed -i'' -e "s/0/$(($i - $subtractAmount))/g" metadata/$i.json
done
