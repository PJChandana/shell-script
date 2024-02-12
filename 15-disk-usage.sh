#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=1
message=""

while IFS= read line
do
    USAGE=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -ge $DISK_THRESHOLD ]
    then
        message+="High Disk Usage on $partition: $usage\n"
    fi
done <<< $DISK_USAGE

echo -e "Message: $message"

echo "$message" | mail -s "High Disk Usage" chandanatpt04@gmail.com

sh mail.sh "Devops Team" "HIgh Disk Usage" "$message" "chandanatpt04@gmail.com" "Alert High Disk Usage"