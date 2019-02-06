#!/bin/bash

read -p "Enter your answer =>" ANS
if [[ -z $ANS ]]; then
	echo "No answer provided"
elif [[ $ANS == "yes" ]]; then
	echo "The answer is YES"
elif [[ $ANS == "no" ]]; then
	echo "The answer is NO"
elif [[ $ANS == "maybe" ]]; then
	echo "The answer is MAYBE"
else
	echo "The answer is UNKNOWN"
fi


# && || ! - logical operators [[ ]] (( )) 
# [ ] -test use -a -or !
# $ mkdir test && cd test
# $ sudo apt update && sudo apt upgrade