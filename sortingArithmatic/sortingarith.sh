#!/bin/bash -x
dictionary -A emp
count=0
read -p "enter the value of a : " a
read -p "enter the value of b : " b
read -p "enter the value of c : " c
d=$(($a+$b*$c))
e=$(($a*$b+$c))
f=$(($c+$a/$b))
g=$(($a%$b+$c))

emp[((count++))]="$d $e $f $g"

