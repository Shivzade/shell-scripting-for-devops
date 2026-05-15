#!/bin/bash

<< usage
-- take username as input
-- take password as input
-- Check if user already exists
-- create the user
usage

# Function Definition
create_user () {
read -p "Enter the username" username
read -p "enter the password" password


if id "$username" &>/dev/null; then
	echo "The user $username exists, exiting the code"
	exit 1
else
	echo "The user $username does not exists and will be created ...."
fi

sudo useradd -m $username -p $password

echo "User $username added successfully"
}


