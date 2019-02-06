#! /bin/bash
echo -n "Enter a number: "
read x

if (( $x > 0 )); then 
	if (( $x%2 == 0 ))
	then 
		echo "$x is positive and even number"
	else
		echo "$x is positive and odd number"
	fi
elif (( x == 0 )); then
	echo "$x is zero"
else
	if (( x%2 == 0 ))
	then
		echo "$x is negative and even number"
	else
		echo "$x is negative and odd number"
	fi
fi