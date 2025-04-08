echo -n "enter num1 : "
read num1
echo -n "enter num2 : "
read num2
temp="$num1"
num1="$num2"
num2=$temp
echo "num1= $num1"
echo "num2= $num2"
exit 0
