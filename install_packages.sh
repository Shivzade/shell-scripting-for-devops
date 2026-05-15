#!/bin/bash

# This script takes the package name from user and installs it.

read -p "Enter the package name:" package_name

echo "Checking if package already installed" 

if dpkg -s $package_name >/dev/null 2>&1 ; then
	echo "$package_name is already installed"
	exit 1
else
	echo "Continuing installation ...." 
echo "Updating system and installing $package_name"
fi
sudo apt-get update

sudo apt install $package_name -y

#sudo systemctl start $package_name
#systemctl status $package_name

read -p "Enter the service name:" service_name
sudo systemctl start $service_name
sudo sytemctl enable $service_name
sudo systemctl status $service_name
