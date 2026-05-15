#!/bin/bash


#set -e

<< usage
create a folder
usage

mkdir josh || mkdir -p josh &>/dev/null

echo "do production work"

touch new-file.txt || {echo "The file was not created"; echo "demo file" > new-file.txt; hfjjgjgm}

<error detected> || { fallback logic to handle error } 
