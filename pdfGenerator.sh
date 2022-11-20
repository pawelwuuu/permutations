#!/bin/bash

filename=$1
#checking if configuration file exists
if [[ -n "$1" ]]
then
    if ! [ -e $filename ]
		then
			echo "Unable to find or open configuration file."
			exit
		fi
else
    echo "You have forgotten about config filename."
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
        echo "Invalid configuration parameters, there should be only numbers in config file."
        exit
    fi
done

for parameter in ${permutationsAmount[@]}
do
    if ! [[ $parameter =~ [0-9]+ ]] ; then
        echo "Invalid configuration parameters, there should be only numbers in config file."
        exit
    fi
done

#checking if numbers are positive
for parameter in ${setLength[@]}
do
    if [ $parameter -lt 0 ] ; then
        echo "Invalid configuration parameters, there should be only positive numbers in config file."
        exit
    fi
done

for parameter in ${permutationsAmount[@]}
do
    if [ $parameter -lt 0 ] ; then
        echo "Invalid configuration parameters, there should be only positive numbers in config file."
        exit
    fi
done

#checking if set lenght parameters are in limit of 60
for parameter in ${setLength[@]}
do
    if [[ $parameter -gt 60 ]] ; then
        echo "Invalid configuration parameters, limit of set length is 100."
        exit
    fi
done

#checking if permutations amount is in range of permutations avalible to obtain
for ((j=0; j<${#setLength[@]}; j++))
do
	maxPermutationLength=1
    for ((i=1; i<=${setLength[$j]}; i++))
	do
		let "maxPermutationLength=maxPermutationLength*$i"
	done
	
	if [[ ${permutationsAmount[$j]} -gt $maxPermutationLength ]]
	then
		echo "Invalid configuration parameters, you can only obtain $maxPermutationLength permutations from ${setLength[$j]} an element set."
        exit
	fi
done


#obtaining permutations by values from config file
for ((i=0; i<${#setLength[@]}; i++))
do
	#todo ZMIENIC TO ZEBY PROGRAM DZIALAL JAK POWINIEN, CZYLI DO KOMENDY WYWOLUJACEJ DODAC PARAMETRY, ORAZ DO PODAC TUTAJ NAZWE SKRYPTU
	#test
	./test.sh `./permutacje`
	sleep 0.1
done

