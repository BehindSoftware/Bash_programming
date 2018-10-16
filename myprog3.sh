#!/bin/bash
#shebang description to point bash directory 
#Author= Berkay SAYDAM

RM_DIR=`pwd`	#Take last directory at the terminal
if [[ $1 != "" ]];then		#if we have a parameter for directory
	RM_DIR=$1		#use parameter as directory
fi

for i in $RM_DIR/*		#take all filename from that directory
do
	FILE_NAME=$i		#assigning filename... 
	FILE_SIZE=$(stat -c%s "$FILE_NAME") #we take file_size with stat command like stat -c/Desktop
	if [[ $FILE_SIZE -eq 0 ]];then		#if file_size equal to 0
		`chmod 777 $FILE_NAME`		#we should take r-w-x permission to remove it 
		`rm $FILE_NAME`			#remove 0-length documents
		counter=$((counter+1))		#to hold number of 0-length documents 
	fi 
done

echo $counter zero-length files are removed from the directory: $RM_DIR 	#debug-print for result
