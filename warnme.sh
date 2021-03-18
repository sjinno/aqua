#!/bin/bash

counter=1
echo "Set interval. (For example, 20 for every 20 mins.)" ; read interval
echo "Set number of repetitions. (For example, 10 will repeat 10 times)" ; read num
echo "Program has started :)"
while [ $counter -le $num ]
do  
    bold=$(tput bold)
    normal=$(tput sgr0)
    sleep ${interval}m
    time=$(date +%H:%M:%S)
    echo "${counter}: ${bold}${time}${normal}" ; play -q water.mp3
    ((counter++))
done

echo "Program has ended."