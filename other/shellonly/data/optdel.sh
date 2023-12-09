#!/bin/bash

# COLORS
FGDEF="\e[39m" # Default foreground color
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
ENDCOLOR="\e[0m"
# COLORS

# Ask path
echo -e "${GREEN}Path to files -${ENDCOLOR}"
read -p $'\e[33m#: \e[0m' filenamepath


# Dir exist or not
if [ ! -e $filenamepath ]; then
	echo -e "\n${RED}Dir ${YELLOW}'$filenamepath'${ENDCOLOR} ${RED}is not exist!${ENDCOLOR}"
	exit
fi

echo


# Ask file name
echo -e "${GREEN}File Name -${ENDCOLOR}" 
read -p $'\e[33m#: \e[0m' filename


# Files exist or not
filenameExist=$(find $filenamepath -name "$filename" | wc -l)
if [ $filenameExist -eq 0 ]; then
	echo -e "\n${RED}File(s) with filename: ${YELLOW}'$filename' ${RED}is not exist!${ENDCOLOR}"
	exit
fi


# Out files
echo -e "${YELLOW}"
find $filenamepath -name "$filename"


# You sure to del it?
echo
echo -e "${YELLOW}^^^^^^ ${GREEN}Delete this files? ${YELLOW}(${RED}y${ENDCOLOR}${YELLOW}/${GREEN}n${YELLOW})${ENDCOLOR}"
read -p $'\e[33m#: \e[0m' delOrNotFiles


# Case
case "$delOrNotFiles" in
	"y") find $filenamepath -name "$filename" -delete | cat
	     echo -e "\n${RED}Deleted${ENDCOLOR}"
	;;
	"n") echo -e "\n${GREEN}Canceled${ENDCOLOR}"
	     exit
	;;
	*)   echo "\n${GREEN}Canceled${ENDCOLOR}"
	     exit
esac
