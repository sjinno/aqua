#!/bin/bash

counter=1
while [ $counter -le 10 ]
do
    sleep 30m ; play -q water.mp3
    echo $counter
    ((counter++))
done

echo Done