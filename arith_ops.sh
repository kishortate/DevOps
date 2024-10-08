#!/bin/bash

#Script to perform arithmatic operations 

a=10
b=5

#method 1 (Using let)

let mul=$a*$b
echo "multiplication is : $mul"

let sum=$a+$b
echo "sum is : $sum"

let division=$a/$b
echo "division is: $division"

#method 2(without using let)

echo "multiplication = $(($a*$b))"

echo "sum = $(($a+$b))"

echo "substraction =  $(($a-$b))"

echo "division = $(($a/$b))"
