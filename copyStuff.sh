#!/bin/sh

subtractAmount=306
for i in {310..349}
do
    cp metadata/LadyApollo.json "metadata/$i.json"
    sed -i'' -e "s/0/$(($i - $subtractAmount))/g" metadata/$i.json
done
