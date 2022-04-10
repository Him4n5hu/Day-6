read -p "Enter num1:" n1
read -p "Enter num2:" n2
for((i=$n1;i<=$n2;i++));
do
	for((j=2;j<=i;j++));
	do
		if [ $(($i/$j)) -eq 0 ];
		then
			break
		fi

	else
		echo $i
	fi
done
