#!/bin/zsh

#Prints random pokemon with form based on random number

# Generate a random number between 0 and 2
random_number=$((RANDOM % 3))

# If-else structure for each possible value
if [[ $random_number -eq 0 ]]; then
    /usr/local/bin/pokemon-colorscripts --no-title -n azelf

elif [[ $random_number -eq 1 ]]; then
    /usr/local/bin/pokemon-colorscripts --no-title -n uxie

elif [[ $random_number -eq 2 ]]; then
    /usr/local/bin/pokemon-colorscripts --no-title -n mesprit

fi

