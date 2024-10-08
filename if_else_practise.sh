#!/bin/bash
#a=40
#b=20

read -p "Enter Num1: " Num1
read -p "Enter Num2: " Num2

if [ $Num1 -lt $Num2 ] 
then

        echo "$Num1 is less than $Num2"

elif [ $Num1 -gt $Num2 ] 
then

        echo "$Num1 is greater than $Num2"
fi
