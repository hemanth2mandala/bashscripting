#!/bin/bash


date | awk '{print $1}'
uptime | awk '{print $1}'
df -h | grep -i tmpfs
