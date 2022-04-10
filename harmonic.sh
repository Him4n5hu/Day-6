read -p "Enter n:" n
harm=0
for((i=1;i<=n;i++))
do
	current=$((1/$i))
	harm=$(($harm+$current))
done
echo $harm
