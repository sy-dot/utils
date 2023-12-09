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
read -p $'\e[33m#: \e[0m' filespath


# Dir exist or not
if [ ! -e $filespath ]; then
	echo -e "\n${RED}Dir ${YELLOW}'$filenamepath'${ENDCOLOR} ${RED}is not exist!${ENDCOLOR}"
	exit
fi

echo

ls -laASGhRp --color=always "$filespath" | sed -re 's/^[^ ]* //'
