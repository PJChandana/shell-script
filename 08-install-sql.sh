#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "ERROR: please run the script with root access"
    exit 1
else
    echo "You are root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "ERROR: Installing MYSQL is failed"
    exit 1
else 
    echo " InstalLING MYSQL is SUCCESS"
fi