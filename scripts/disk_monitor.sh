#!/bin/bash

# ==================================
# Script Name : disk-monitor.sh
# Description : Monitor Disk Usage
# ==================================

THRESHOLD=80

echo "Checking Disk Usage..."
echo "------------------------"

df -h | grep -vE '^Filesystem|tmpfs|devtmpfs' | while read line
do
    usage=$(echo $line | awk '{print $5}' | cut -d'%' -f1)
    partition=$(echo $line | awk '{print $6}')

    echo "Partition : $partition"
    echo "Usage     : $usage%"

    if [ $usage -ge $THRESHOLD ]
    then
        echo "WARNING : Disk usage is above ${THRESHOLD}%"
    else
        echo "Status  : Healthy"
    fi

    echo "------------------------"
done
