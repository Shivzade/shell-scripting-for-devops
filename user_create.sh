#!/bin/bash

# This script can input multiple users

<<disclaimer
This is the script that can make multiple inputs
and create multiple users
use wisely
disclaimer

for i in {1..5}
do
	read -p "Enter the user name:" user_name 

	sudo useradd -m $user_name
	echo "User $user_name added successfully"
done


