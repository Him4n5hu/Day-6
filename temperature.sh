function degF(){
	conv=`echo "(1.8 * $1) + 32" | bc`
	echo $conv
}
function degC(){
	conv=`echo "(5/9)*($1-32)" | bc`
	echo $conv
}
echo "1.Celsius to fahrenheit"
echo "2.Fahrenheit to celsius"
read -p "Enter choice:" choice
read -p "Enter value:" value
case $choice in
	1)
		degF value
		echo $(degF);;
	2)
		degC value
		echo $(degC);;
	*)
		echo "Enter Valid choice!";;
esac
