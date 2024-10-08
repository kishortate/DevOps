#!/bin/bash

function create_user {
	read -p "Enter username to create: " username
	read -p "Enter password for $username: " password
	echo "User creation in progress..." 
	sleep 2s
	$(sudo useradd -m $username -p $password)
	echo "User $username created successfully."
}
#create_user

function delete_user {
	read -p "Enter username to delete: " username
	echo "User deletion in progress: " 
	sleep 2s
	$(sudo userdel $username) 
	echo "$username deleted successfully."
}
#delete_user

function user_ops {
echo "Welcome to user management system: "
echo "Enter c to create user: "
echo "Enter d to delete user: "
}

case $1 in
	c) create_user
	;;
	d)delete_user
	;;
	*)
	user_ops
	;;
esac

















