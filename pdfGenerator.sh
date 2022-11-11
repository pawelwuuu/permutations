#!/bin/bash

filename=$1

#putting parameters form config file into the array.
counter=0

chapters=0
setLength=()
permutationsAmount=()

#loading parameters to arrays: setLengh and permutationsAmount.
while read line; do
    if (($counter==0)); then
        chapters=$line
        counter=1
        
        continue
    fi

    #parameters is an array that stores splited parameters from read
    #line e.g line (2 5) and line (8 6) will be stored in
    #parameters array like that [2, 5, 8, 6].
    parameters=()
    for value in $line
    do
        parameters+=($value)
    done

    setLength[$counter-1]=${parameters[0]}
    permutationsAmount[$counter]=${parameters[1]}
    counter+=1
done < $filename
