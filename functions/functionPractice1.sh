#!/bin/bash


myFirstFunc() {
	num1=$1
	num2=$2
	let sum=$num1+$num2
	echo "Sum is $sum"
}

myFirstFunc $1 $2

