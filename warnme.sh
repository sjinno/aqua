#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)

echo "Set interval.     ${bold}Example: 20${normal} # Every 20 mins" ; read interval
echo "Set # of repeats. ${bold}Example: 10${normal} # Repeat 10 times" ; read num

osType=$(uname)
counter=1
echo "Program has started :)"
while [ $counter -le $num ]
do
    sleep ${interval}
    time=$(date +%H:%M:%S)
    echo "${counter}: ${bold}${time}${normal}"
    case "$osType" in
            "Darwin")
            {
                afplay water.mp3
            } ;;    
            "Linux")
            {
                play -q water.mp3
            } ;;
            *) 
            {
                echo "Unsupported OS. Exiting... :("
                exit
            } ;;
    esac
    ((counter++))
done
echo "Program has ended."
