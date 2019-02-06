#!/bin/bash
echo 'Hello World'
printf "%s\n" "Hi There World"
#echo $(ls -al)
#mkdir test
#cd test
#touch hi.txt
#echo "5**5 = "$((5**5))
#cd ..
#ls -al > test/hi.txt
MyName="Ram Basnet"
echo $MyName
num=100
echo $num
printf "%d\n" $num
# Array
NAMES=("$MyName" "john smith") # space is the item separator
nums=(1 2 3 4 "stuff")
nums[5]="more stuff"
nums=(1 2 3)
#NAMES[0]="RAM"
NAMES[2]="jake"
echo "first name = "${NAMES[0]}
echo "second name = "${NAMES[1]}
echo "all names = "${NAMES[@]}

#Associative array
# declare -A <name>
declare -A eng2Span
eng2Span["one"]="uno"
eng2Span["two"]="dos"
eng2Span["three"]="tres"

echo ${eng2Span["one"]}
echo ${eng2Span[*]} # print all the values
echo ${!eng2Span[*]} # print all the keys ! can also use @
# delete keys
unset eng2Span["one"]
echo ${eng2Span[*]} # print all the values

printf "number of keys=%d\n" ${#eng2Span[*]}

# loop through keys
for k in ${!eng2Span[*]}
do
    echo $k "->" ${eng2Span[$k]}
done

