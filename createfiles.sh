#!/bin/bash

echo "How many files would like to create"
read a
echo "Please enter the starting of the file name"
read b
for j in $(seq 1 $a)
do 
touch $b.$j
done
