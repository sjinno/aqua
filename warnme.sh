#!/bin/bash

counter=1
while [ $counter -le 10 ]
do  
    bold=$(tput bold)
    normal=$(tput sgr0)
    sleep 30m
    time=$(date +%H:%M:%S)
    echo "$counter: ${bold}$time${normal}" ; play -q water.mp3
    ((counter++))
done

echo Done