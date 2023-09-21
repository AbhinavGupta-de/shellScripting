#!/bin/bash


array_func() {
	echo "Function called"
	echo "Bad touch!!"
	echo "You touched me!!"
	echo "Your naughty dirty array!!"
	
	sum=0
	for element in ${a[@]}
	do
		# sum=$(($sum+$element))
		let sum=$sum+$element
	done

	echo "Sum of all the elements in the array is: $sum"
}

a=($1 $2 $3 $4)

array_func $a
