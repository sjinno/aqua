#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)

echo "Set interval.     ${bold}Example: 20${normal} # Every 20 mins" ; read interval
echo "Set # of repeats. ${bold}Example: 10${normal} # Repeat 10 times" ; read num

counter=1
echo "Program has started :)"
while [ $counter -le $num ]
do
    sleep ${interval}m
    time=$(date +%H:%M:%S)
    echo "${counter}: ${bold}${time}${normal}" ; play -q water.mp3
    ((counter++))
done
echo "Program has ended."
