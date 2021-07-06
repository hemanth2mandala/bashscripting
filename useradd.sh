#!/bin/bash

echo "Please enter the username"
read user
echo
grep -q $user /etc/passwd
if [ $? -eq 0 ]
then 
echo "Error: User $user already exists"
echo 
exit 0
fi
useradd $user
sleep 1
echo " $user has been created successfully "
