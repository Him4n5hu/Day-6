read -p "Enter n:" n
result=2
if [ $n -le 8 ];
then

	for((count=1;count<=$n;count++))
	do

		echo $result
		result=$(($result*2))
	done
fi
