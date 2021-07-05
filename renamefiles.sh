#!/bin/bash

for filename in *.bash
do 
mv $filename ${filename%.bash}.txt
done
