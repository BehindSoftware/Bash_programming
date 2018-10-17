#!/bin/bash
#shebang description to point bash directory 
#Author= Berkay SAYDAM

Maximum=0	#initial maximum value
echo "Enter a sequence of numbers followed by "end""	#notification for users

while [ "$input" != "end" ]	#control to entering end input
do
	read input		#take input from user
	if [ "$input" != "end" ] && [ $Maximum -lt $input ]	#if input is not end and greater than our maximum value
	then
		Maximum=$input		#do it new maximum value
	fi
done

if [ $Maximum -eq 0 ]		#control to having any number input
then
	echo "You don't enter any numbers to determine maximum of them."
else
	echo "Maximum:$Maximum"			#debug-print to maximum values
fi
