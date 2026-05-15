#!/bin/bash

<< readme

This ius a script for backup with 5 day rotation

Useage:
./backup.sh <path to your source> <path to backup folder>

readme

function display_usage () {
	echo "Useage: ./backup.sh <path to your source> <path to backup folder> "
}

if [ $# -eq 0 ]; then
	display_usage
fi


