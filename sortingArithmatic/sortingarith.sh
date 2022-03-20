#!/bin/bash -x

read -p "enter the value of a : " a
read -p "enter the value of b : " b
read -p "enter the value of c : " c
d=$(($a+$b*$c))
e=$(($a*$b+$c))
