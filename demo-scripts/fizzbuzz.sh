#! /bin/bash

# if number is divisible by 2; print 'Fizz'
# if number is divisible by 5; print 'Buzz'
# if number is divisible by both 2 and 5, print 'FizzBuzz'

read -p "Enter a number: " num
if (( num%2 == 0 )) && (( num%5 == 0 )); then
    echo "FizzBuzz"
elif (( num%2 == 0 )); then
    echo "Fizz"
elif (( num%5 == 0 )); then
    echo "Buzz"
else
    echo $num
fi
