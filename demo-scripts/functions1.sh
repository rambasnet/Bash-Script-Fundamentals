#!/bin/bash

# example of bash function, local and global variables, 
# and passing arguments to function
name="John"

sayHello() {
    local name1="Jake"
    echo -e "Hello there $1!\n" # first argument
    echo name = $name
    echo name1 = $name1
    return
    #exit 0
}

sayHello "James" "adsfds" "asdfds"
sayHello
# call function without passing arguments
ans=$(sayHello)
echo "returned values =" $ans