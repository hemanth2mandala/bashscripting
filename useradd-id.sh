#!/bin/bash

echo "Please Enter the Username"
read user
echo
grep -q $user /etc/passwd
if [ $? -eq 0 ]
then 
echo "Error: $user already exists in system"
echo
exit 0
fi
echo "Please Enter Description"
read desc
echo "Do you want to specify the uid for the user (y/n)"
read yn
echo 
if [ $yn == y ]
then 
echo "Please Enter the uid greater than 1001"
read uid
echo 
useradd $user -c "$desc" -u $uid
echo 
echo "$user account has been created successfully"
elif [ $yn == n ]
then 
echo "system defined uid will be created by default"
useradd $user -c "$desc"
echo "$user has been created successfully"
fi
