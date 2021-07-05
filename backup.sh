#!/bin/bash
tar -cvf /tmp/backup.tar /var/log
gzip /tmp/backup.tar

find /tmp/backup.tar.gz -mtime -1 -type f -print &> /dev/null

if [ $? -eq 0 ]
then 
echo " Backup was created"
echo 
else
echo " Backup wasnot created "
fi
