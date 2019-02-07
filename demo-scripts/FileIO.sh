#! /bin/bash

# read file contents using while loop
cat input.txt | sort -nr | while read i fname lname; do
	echo "$i. $fname $lname" >> input1.txt
done

while read i fname lname grade1 grade2; do
	echo "$i. $fname $lname $(( (grade1+grade2)/2 ))"
done < input.txt