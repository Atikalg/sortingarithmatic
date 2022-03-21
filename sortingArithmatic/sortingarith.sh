##!/bin/bash -x
dictionary -A emp
count=0
n=4
read -p "enter the value of a : " a
read -p "enter the value of b : " b
read -p "enter the value of c : " c
d=$(($a+$b*$c))
e=$(($a*$b+$c))
f=$(($c+$a/$b))
g=$(($a%$b+$c))

emp[((count++))]=$d
emp[((count++))]=$e
emp[((count++))]=$f
emp[((count++))]=$g

echo "${emp[@]}"
for((j=0; j<4 ;j++))
	do
	i=0;
	min=1000;
	max=0;



	for((i=0; i<4; i++))
	do

		num=$((emp[$i]))
		if [ $num -gt $max ]
			then
			max=$num
			index=$i
		fi
	done


	sort[$j]=$max
	emp[$index]=0

done

echo sort: ${sort[@]}

