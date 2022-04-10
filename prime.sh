read -p "Enter number to check:" n
for((i=2;i<$n;i++))
do
	if [ $(($n/$i)) -eq 0 ];
	then
		echo "Not prime"
		break
	fi
done
if [ $i -eq $n ];
then
	echo "Prime"
fi
