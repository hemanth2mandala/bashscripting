#!/bin/bash
for j in Trie.*
do 
echo "Assisgning file permissions to $j"
chmod +x $j
sleep 1
done
