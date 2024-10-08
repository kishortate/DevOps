#!/bin/bash

#Script to pring grading according to marks obtained

read -p "Enter your marks : " marks

if [[ $marks -lt 35 ]]
then 
	echo "Sorry You are failed."

elif [[ $marks -gt 36 && $marks -le 60 ]] 
then 
	echo "You are passed with grade C . "

elif [[ $marks -gt 61 && $marks -le 80 ]]
then 
	echo "You are passed with grade B."

elif [[ $marks -ge 81 ]] 
then 	
	echo "Your are passed with grade A. "
fi

