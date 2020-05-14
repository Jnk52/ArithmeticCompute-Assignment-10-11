#!/bin/bash -x
read -p "Enter the value a: " a
read -p "Enter the value b: " b
read -p "Enter the value c: " c

Compute1=$(($a+$b*$c))
echo compute1
compute2=$(($a * $b + c))
echo compute2
compute3=$(($c + $a / b))
echo compute3
compute4=$(($a%$b+$c))
echo compute4

echo "Ans1=$compute1"
echo "Ans2=$compute2"
echo "Ans3=$compute3"
echo "Ans4=$compute4"
count=0
for i in ${!ArithOpsDict[@]}
do
	ArithOpsArr[count++]=${ArithOpsDict[$i]}
done

echo ${ArithOpsArr[@]}
