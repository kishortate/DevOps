#!/bin/bash


function delete_user {
	echo "Users list:" "($(cat /etc/passwd | tail -10))"

	read -p "Enter user you want to delete " username

	$(sudo userdel $username)

	echo "User $username has deleted successfully.!!"
}


delete_user
