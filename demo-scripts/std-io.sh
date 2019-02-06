#!/bin/bash -x
# -x turn trace on for whole file
# Input/Output
echo "Some stuff"
#printf "format" <format> <space separated arguments>
# %x - hex
# %o - octal
# %d or %i signed decimal
# %s - string

printf "%s %d %d\n" "some text" 1 2

# prompt user to enter data
echo -n "Enter a number: "
read num
printf "you entered %d\n" $num

# Shortcut
read -p "Enter a number: " N
printf "N%%2 = %d\n" $((N%2))

read -p "Enter your full name: " name
echo "Hello " $name
printf "Hello %s\n" "$name" # treat as one value not expand as ind. values

