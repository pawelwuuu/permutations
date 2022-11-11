#!/bin/bash


filename=$1
#checking if configuration file exists
if ! [ -e $filename ]
then
    echo "Unable to find or open configuration file."
    exit
fi


firstIterationFlag="true"

chapters=0
setLength=()
permutationsAmount=()

#loading parameters to arrays: setLength and permutationsAmount.
while read line; do
    if [ $firstIterationFlag = 'true' ]
        then
            chapters=$line
            firstIterationFlag='false'

            continue
    fi

    #parameters is an array that stores splited parameters from read
    #line e.g line (2 5) and line (8 6) will be stored in
    #parameters array like that [2, 5, 8, 6].
    parameters=()
    for value in $line; do
        parameters+=($value)
    done

    setLength+=(${parameters[0]})
    permutationsAmount+=(${parameters[1]})
done < $filename

#Validating parameters
#checking if file ends with empty line character
fileContent=`cat -e $filename`
if [[ ${fileContent: -1} != '$' ]]; then
    echo "Invalid configuration parameters, there should be an empty line at the end of file."
    exit
fi

#checking if parameters are digits
for parameter in ${setLength[@]}
do
    if ! [[ $parameter =~ [0-9]+ ]] ; then
        echo "Invalid configuration parameters, there should be only positive numbers in config file."
        exit
    fi
done

for parameter in ${permutationsAmount[@]}
do
    if ! [[ $parameter =~ [0-9]+ ]] ; then
        echo echo "Invalid configuration parameters, there should be only positive numbers in config file."
        exit
    fi
done

#checking if set lenght parameters are in limit of 100
for parameter in ${setLength[@]}
do
    if [[ $parameter -gt 100 ]] ; then
        echo "Invalid configuration parameters, limit of set length is 100."
        exit
    fi
done

