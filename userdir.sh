#!/bin/bash
cd /home
for DIR in *
do 
CHK=$(grep -c "/home/$DIR" /etc/passwd)
if [ $CHK -ge 1 ]
then 
echo "$DIR is assigned to user"
else
echo "$DIR is not assigned to any user"
fi
done
