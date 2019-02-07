#! /bin/bash
## A Simple Countdown script

for (( count=10; count>0; count=count-1 )); do
	clear # clear screen
	echo $count
	sleep 1 # sleep for 1 second
done
clear
echo "blast off!"