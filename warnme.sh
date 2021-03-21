#!/usr/bin/env bash

do_the_thing() {
    local bold=$(tput bold)
    local normal=$(tput sgr0)

    echo "Set interval.     ${bold}Example: 20${normal} # Every 20 mins"   ; read interval
    echo "Set # of repeats. ${bold}Example: 10${normal} # Repeat 10 times" ; read num

    local counter=1
    local interval=$(( $interval * 60 ))
    
    echo "Program has started. [${bold}$(date +%H:%M:%S)${normal}]"
    while [ $counter -le $num ]
    do
        sleep ${interval}
        echo "${counter}: ${bold}$(date +%H:%M:%S)${normal}" ; $1
        ((counter++))
    done
    echo "Program has ended."
}

osType=$(uname)
case "$osType" in
    "Darwin")
        do_the_thing "afplay water.mp3"
        ;;    
    "Linux")
        do_the_thing "play -q --volume 0.6 water.mp3"
        ;;
    *) 
        echo "Unsupported OS :("
        ;;
esac
