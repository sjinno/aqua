#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)

echo "Set interval.     ${bold}Example: 20${normal} # Every 20 mins" ; read interval
echo "Set # of repeats. ${bold}Example: 10${normal} # Repeat 10 times" ; read num

osType=$(uname)
counter=1

do_the_thing() {
    echo "Program has started :)"
    while [ $counter -le $num ]
    do
        sleep ${interval}m
        time=$(date +%H:%M:%S)
        echo "${counter}: ${bold}${time}${normal}"
        $1
        ((counter++))
    done
    echo "Program has ended."
}

case "$osType" in
    "Darwin")
        do_the_thing "afplay water.mp3"
    ;;    
    "Linux")
        do_the_thing "play -q water.mp3"
    ;;
    *) 
    {
        echo "Unsupported OS :("
    } ;;
esac
