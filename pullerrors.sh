#!/bin/bash
#Author : Hemanth


grep -i error /var/log/messages > /root/realtime-scripts/error.out
grep -i failed /var/log/messages | head  > /root/realtime-scripts/failed.out
grep -i warn /var/log/messages > /root/realtime-scripts/warn.out
