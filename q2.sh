echo -n "Enter year"
read year
if (((year%4==0 && year%100!=0)) || ((year%400==0))); then
    echo "$year is leap year"
else
    echo "$year is non leap year"
fi

