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
name="John"
sayHello() {
    local name="Jake"
    if [[ -n $1 ]]; then
        echo "Hello there, $1!"
    else
        echo "Hello there!"
    fi
    echo $name
    return
    #exit 1
}

sayHello "James"
# call function without passing arguments
var=$(sayHello)
echo "var=" $var