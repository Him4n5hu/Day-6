initial=100
wins=0
bets=0
while [ true ];
do
	if [ $initial -eq 0 -o $initial -eq 200 ];
	then
		break
	fi
	bets=$(($bets + 1))
	if [ $((RANDOM%2)) -eq 0 ];
	then
		initial=$(($initial - 1))
	else
		initial=$(($initial + 1))
		wins=$(($wins + 1))
	fi
	echo Bets $bets , Won $wins , Money $initial
done
if [ $initial -eq 200 ];
then
	echo "Reached goal of 200rs. in $wins wins and $bets total bets"
else
	echo "-------BROKE-------"
fi
