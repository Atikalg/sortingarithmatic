##!/bin/bash -x
dictionary -A emp
count=0

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

for ((i = 0; i<4; i++))
do

    for((j = 0; j<4-i; j++))
    do

        if [ ${emp[j]} -gt ${emp[$((j+1))]} ]
        then
            # swap
            temp=${emp[j]}
            emp[$j]=${emp[$((j+1))]}
            emp[$((j+1))]=$temp
        fi
    done
done
echo ${emp[@]}

rev=($(printf '%s\n' "${emp[@]}" | sort -nr))
echo ${rev[@]}
