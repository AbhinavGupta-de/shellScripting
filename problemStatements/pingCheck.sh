#!/bin/bash


echo "Checking connection"

ping -c1 $1 > log.txt

if [ "$?" == "0" ];
then 
	echo "Connection Successful"
else
	echo "Connection Unsuccessful"
fi

