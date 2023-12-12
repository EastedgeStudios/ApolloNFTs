#!/bin/sh

subtractAmount=106
for i in {110..149}
do
    cp metadata/ApolloKnight.json "metadata/$i.json"
    sed -i'' -e "s/0/$(($i - $subtractAmount))/g" metadata/$i.json
done
