#!/bin/bash

# bash arguments.sh one two "three four"


echo "Using \"\$*\":"
for a in "$*"; do # regard $* as one long quoted string
    echo $a;
done

echo -e "\nUsing \$*:" 
for a in $*; do # string broken into words
    echo $a;
done

echo -e "\nUsing \"\$@\":"
for a in "$@"; do # treat each element of $@ as a quoted string
    echo $a;
done

echo -e "\nUsing \$@:"
for a in $@; do # treat each elements as an unquoted string
    echo $a;
done              
