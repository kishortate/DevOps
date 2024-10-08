#!/bin/bash
echo "Disk Space : $(df -h | awk 'NR == 2 {print $2}')"
echo "Availale RAM: $(free -h | awk ' NR == 2 {print $4}')"

Name="Kishor"

echo $Name

echo "Hello Myself $Name"

echo "What is your Brother's Name?"

#read Name

#echo "My Brother's name is $Name"

function read_age { 
echo "What is your age?"

read age

echo "My age is $age"

if [ $age = "18" ]; then
	echo "Teen"
else 
	echo "You can vote"
fi
} 

read_age


