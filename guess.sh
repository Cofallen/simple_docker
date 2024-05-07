#!/bin/bash

# echo "请输入一个数"
number=$(shuf -i 1-10 -n 1)
# read guess
while true
do
	echo "请输入一个1~10的整数"
	read guess
	if [[ $guess -eq $number ]]; then
		echo "猜对了,是否继续 (y/n)"
		read choice
		if [[ $choice = "y" ]] || [[ $choice = "Y" ]]; then
			number=$((RANDOM%10+1))
			continue
		else
			break
		fi
	elif [[ $guess -lt $number ]]; then
		echo "小了"
	else
		echo "大了"
	fi
done
