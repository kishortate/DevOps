#!/bin/bash

read -p "Enter which site you want to check ? " site

ping -c 1 $site

if [[ $? -eq 0 ]]
then
	echo "Successfully connected to $site "
	#sleep 2s
else
	"Unable to connect $site"
fi

