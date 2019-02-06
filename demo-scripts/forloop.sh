#!/bin/bash

nums=(1 2 3) # declare an array of three values

printf "%s\n" "${nums[@]}"

#for loop example
nums=(1 2 3)
#printf "%s\n" "${nums[@]}"
for i in "${nums[@]}"; do
    echo $i
done

for i in "${nums[@]}"
do
    echo $i
done

for i in 1 2 3; do
	echo $i
done

for word in "word1" "word2" "word3"; do
	echo $word
done

# print line and total characters in each line for some input
count=0
for i in $(ls ~); do
	count=$((count + 1))
	echo "Line $count ($i) contains $(echo -n $i | wc -c) characters"
done

# positional parameters - "$@" contains the list of command line arguments
for i in "$@"; do
	echo $i
done

for ((count=10; count>0; count=count-1)); do
	clear
	echo $count
	sleep 1
done
clear
echo "blast off!"