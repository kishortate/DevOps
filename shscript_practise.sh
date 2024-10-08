#!/bin/bash	

#How to store variables

var1=10
var2=29.4
Name="Abhi"

#echo "$var1 $var2 $Name"


#Scrpit to check if a user is root or not

if (( $UID == 0 ))
then
	echo "User is root"
else
	echo "User is not root"
fi
