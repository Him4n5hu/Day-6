#!/bin/bash
function palind(){
	n=$1
	k=0
	num=0
	while [ $n -gt 0 ];
	do
		num=$(( $num * 10))
		k=$(( $n % 10))
		num=$(( $num + $k))
		n=$(( $n / 10))
	done
	echo $num
}
read -p "Enter first number:" x
read -p "Enter second number:" y

reversedy=$(palind $y)
if [ $reversedy -eq $x ];
then
	echo "Palindrome!"
else
	echo "Not palindrome."
fi
