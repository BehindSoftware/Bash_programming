#!/bin/bash
#shebang description to point bash directory 
#Author= Berkay SAYDAM

Maximum=0	#initial maximum value
echo "Enter a sequence of numbers followed by "end""	#notification for users

while [ "$input" != "end" ]	#control to entering end input
do
	read input		#take input from user
	if [ $Maximum -lt $input ]	#if input greater than our maximum value
	then
		Maximum=$input		#do it new maximum value
	fi
done
echo "Maximum:$Maximum"			#debug-print to maximum value
