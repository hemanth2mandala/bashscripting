#!/bin/bash
echo "Enter the Day"
read day 
echo "Enter Month"
read month
echo "Enter Date"
read date
echo 
last | grep "$day $month $date"
