read -p "Enter n:" n
result=2
for((count=1;count<=$n;count++))
do
	echo $result
	result=$(($result*2))
done
