#!/bin/bash

# If Condition is used to check whether this or that

a=10
b=20

if [ $a -gt $b ]; then
	echo "$a is bigger"
else
	echo "$b is bigger"
fi


#if [ -f "etc/passwd" ]; then

read -p "Enter the file path to be found:" file_path
if [ -f $file_path ]; then
	echo "File exists"
else
	echo "File dosen't exists"
fi
