headcount=0
tailcount=0
while [ $headcount -lt 11 -o $tailcount -lt 11 ];
do
	tossed=$((RANDOM%2))
	if [ $tossed -eq 0 ];
	then
		echo "Heads"
		headcount=$(($headcount + 1 ))
	else
		echo "Tails"
		tailcount=$(($tailcount + 1 ))
	fi
done
if [ $headcount -le 11 ];
then
	echo "Head wins"
else
	echo "Tail Wins"
fi
