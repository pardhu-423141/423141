echo -n "Enter a positive number: "
read num


fact=1

if (( num < 0 )); then
  echo "Invalid: Number must be non-negative."
elif (( num == 0 )); then
  echo "$fact"  
else
  for i in $(seq 1 "$num"); do  
	fact=$((fact * i))
  done
  echo "$fact"
fi

exit 0
