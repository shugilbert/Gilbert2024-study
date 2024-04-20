#!/bin/bash
read -p "enter a number: " num
while [ sum -gt 0 ]
do
	if  [ sum -ne 0 ]
	then 
		echno "this is a positive number"
	fi
	read -p "enter a number: " :num
done
