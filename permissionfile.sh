#!/bin/bash
total=`ls -l Trie* | wc -l`
echo "It will take $total seconds, to complete"
echo
for i in Trie.*
do 
echo " Assign write permissions to file: $i "
chmod a+w $i
sleep 1
done
