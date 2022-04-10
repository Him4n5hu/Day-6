#!/bin/bash
function palind(){
	n=$1
	nc=$1
	k=0
	num=0
	while [ $n -gt 0 ];
	do
		num=$(( $num * 10))
		k=$(( $n % 10))
		num=$(( $num + $k))
		n=$(( $n / 10))
	done
	if [ $num -eq $nc ];
	then
		echo 0
	else
		echo 1
	fi
}

function prime(){
	num=$1
	for((i=2;i<$n;i++))
	do
		if [ $(($n/$i)) -eq 0 ];
		then
			echo 1
			break
		fi
	done
	if [ $i -eq $num ];
	then
		echo 0
	fi
}


read -p "Enter number:" y
prim=$(prime $y)
if [ $prim -eq 0 ];
then
	echo "Prime"
	reversedy=$(palind $y)
	prim=$(prime $reversedy)
	if [ $prim -eq 0 ];
	then
		echo "Palindrome also Prime"
	else
		echo "Palindrome not prime"
	fi
else
	echo "Not prime"
fi
