#!/bin/bash

# This script was written by Joshua Tapp (jct7bm)
# to help automate the testing for lab 03 in CS2150
# Date: 02/27/21

project_root=$(dirname $(dirname $(dirname $(realpath $0 ))))
test_dir="$project_root/labs/lab03/input"

echo "beginning testing...."

a=$(./a.out < $test_dir/addition.txt)
b=$(./a.out < $test_dir/subtraction.txt)
c=$(./a.out < $test_dir/multiplication.txt)
d=$(./a.out < $test_dir/division.txt)
e=$(./a.out < $test_dir/negation.txt)
f=$(./a.out < $test_dir/AddSub.txt)
g=$(./a.out < $test_dir/all4.txt)
h=$(./a.out < $test_dir/multDiv.txt)
i=$(./a.out < $test_dir/all5.txt)


if [ $a = "15" ]; then
   echo "Addition Passed"
else
    echo "Addition Failed | Expected 15, Actual " $a
fi

if [ $b == "21" ]; then
    echo "Subtraction Passed"
else
    echo "Subtraction Failed | Expected 21, Actual " $b
fi

if [ $c == "120" ]; then
   echo "Multiplication Passed"
else
    echo "Multiplication Failed | Expected 120, Actual " $c
fi

if [ $d == "42" ]; then
    echo "Division Passed"
else
    echo "Division Failed | Expected 42, Actual " $d
fi

if [ $e == "1" ]; then
    echo "Negation Passed"
else
    echo "Negation Failed | Expected 1, Actual " $e
fi

if [ $f == "31" ]; then
    echo "Add/Sub Passed"
else
    echo "Add/Sub Failed | Expected 31, Actual " $f
fi

if [ $g == "-14" ]; then
    echo "All 4 opes Passed"
else
    echo "All 4 ops Failed | Expected -14, Actual " $g
fi

if [ $h == "112" ]; then
    echo "Mult/Div Passed"
else
    echo "Mult/Div Failed | Expected 112, Actual " $h
fi

if [ $i == "14" ]; then
    echo "ALL 5 Passed"
else
    echo "ALL 5 Failed | Expected 14, Actual " $i
fi



