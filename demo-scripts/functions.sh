#! /bin/bash
# function syntax
#   function name {
#       body
#       return
#   }
# OR
# funcName() {
#   body
#   return 
# }
name="Michael"
sayHello() {
    local name="Jake"
    # check for # of arguments
    if (( $# >= 1 )); then
        echo "more than one argument provided: total arguments = $#"
    fi
    # check if first argument exists
    if [[ -n $1 ]]; then
        echo "Hello there, $1!"
    else
        echo "Hello there, $name"
    fi
    return
    #exit 1 #exit the program/script completely
}

sayHello "Sally"
# call function without passing arguments
sayHello

# use the echo value as a return value
ans=$(sayHello) 
echo "return value =" $ans