#!/bin/bash
echo "Think of a number between 1 and 100"
left=0
right=100
choice=1
while [ $choice -eq 0 -o $choice -eq 1 ]
do
	n=$(((left+right)/2))
	read -p "Enter 0 if your number is lesser than $n or 1 if not and 2 if equal:" choice
	if [ $choice -eq 0 ];
	then
		right=$n
	elif [ $choice -eq 1 ];
	then
		left=$n
	elif [ $choice -eq 2 ];
	then
		echo your number is $n
	fi
done
