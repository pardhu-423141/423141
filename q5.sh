echo -n "Enter num1: "
read num1
echo -n "Enter num2: "
read num2

num1=$((num1))
num2=$((num2))

if (( num1 <= 0 )) || (( num2 <= 0 )); then
  echo "Invalid: Numbers must be positive."
  exit 1
fi

if (( num1 == num2 )); then
  echo "$num1"
  exit 0
fi

if (( num1 > num2 )); then
  smaller="$num2"
else
  smaller="$num1"
fi

gcd=1

for i in $(seq 1 "$smaller"); do
  if (( num1 % i == 0 )) && (( num2 % i == 0 )); then
	gcd="$i"
  fi
done

echo "gcd of $num1,$num2 = $gcd"

lcm=$(( (num1 * num2) / gcd ))
echo "lcm of $num1,$num2 = $lcm"

exit 0

