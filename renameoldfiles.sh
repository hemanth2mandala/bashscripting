#!/bin/bash

find /root/realtime-scripts/ -mtime +90 -exec mv {} {}.old \;
