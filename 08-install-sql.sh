#!/bin/bash

ID=${ id -u }

if [ $ID -ne 0]
then 
    echo "ERROR:please run the script with root access"
else
    echo "You are root user"
fi

Yum install mysql -y