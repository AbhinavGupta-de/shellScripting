#!/bin/bash


# Check if the provided file exists or not

if ! [ -e "$1" ];
then
	echo "Please provde a valid file"
	exit 1
fi

filename=$1

date >> $filename

echo "Date and time appended to #filename"


