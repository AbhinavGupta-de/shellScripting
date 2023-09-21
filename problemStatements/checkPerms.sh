#!/bin/bash

filename=$1

# Check if the file exists or not
if ! [ -f "$filename" ];
then
	echo "Please enter a valid name"
	exit 1

fi

# Check the permissions of the file

if [ ! -r $filename ] || [ ! -w $filename ] || [ ! -x $filename ];
then
	echo "The file does not have read, write or execute permission for the owner. Changing the permissions now..."
	chmod o-rwx $filename
else
	echo "The file already has all the permissions"
fi

