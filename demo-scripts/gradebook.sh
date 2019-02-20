#! /bin/bash

# a simple grade book program!

nW=10
fNW=20
lNW=20
printf '=%.0s' {1..85} # repeat = 85 times
echo
printf "%-${nW}s %-${fNW}s %-${lNW}s %${nW}s %${nW}s %${nW}s\n" \
    ID "First Name" "Last Name" "Test 1" "Test 2" "Average"
# left justification -N char wide column
printf '=%.0s' {1..85} # repeat = 85 times
echo

cat ./demo-scripts/input.txt | while read id fname lname test1 test2; do
    # bash doesn't do floating point arithmetic!
    avg=$(echo "print(($test1+$test2)/2)" | python)
    printf "%-${nW}s %-${fNW}s %-${lNW}s %${nW}.2f %${nW}.2f %${nW}.2f\n" $id $fname $lname $test1 $test2 $avg
done
printf '=%.0s' {1..85} # repeat = 85 times
echo