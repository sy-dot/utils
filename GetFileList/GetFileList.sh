#!/bin/bash

date=$(date +%m_%d_%Y__%I_%M_%S)

echo "$date" > filelist_$date.txt
find . -print >> filelist_$date.txt
echo 'Done!'