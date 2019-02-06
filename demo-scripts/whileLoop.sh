#!/bin/bash

#set -x
#set trace on for the block of code
count=10
# use [[ exp ]] for bash exp that has some output
# use (( exp )) for pure numeric epression
# [ ] works in most shell types
#while [[ count -gt 0 ]]; do
#while (( count > 0 )); do

while [[ $count > 0 ]]; do
	clear
	echo $count
	sleep 1
	clear
	#((count-=1)) 
	(( count-- ))
done
echo "blast off!"
#set +x
#set trace off