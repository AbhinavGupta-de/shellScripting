#!/bin/bash


sayHello() {
	echo "Wilikomen $1 $2"
	return "said hello"
}

sayHello Abhinav Gupta
returnVal=$?
echo "Value returned: $returnVal"

