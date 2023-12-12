#!/bin/sh

subtractAmount=146
for i in {150..189}
do
    cp metadata/ApolloTanner.json "metadata/$i.json"
    sed -i'' -e "s/0/$(($i - $subtractAmount))/g" metadata/$i.json
done
