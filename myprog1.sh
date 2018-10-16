#!/bin/bash  
#shebang description to point bash directory 
#Author= Berkay SAYDAM

for i in `cat $1`	#parameter of myprog1.sh is got with $1 and we read that directory by cat command to take numbers.
do  
	for ((j=1;j<=i;j++))	#classical for loop is say us that print * up to equal i variable.
	do printf "*"
	done
	printf "\n"		#For newline
done
