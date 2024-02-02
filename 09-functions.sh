#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR: $2.. is failed"
        exit 1
    else 
        echo "$2... is SUCCESS"
    fi
}

if [ $ID -ne 0 ]  
then 
    echo "ERROR: please run the script with root access"
    exit 1
else
    echo "You are root user"
fi

yum install MYSQL -y

VALIDATE $? "MYSQL installing"

yum install GIT -y

VAIDATE $? "Installing GIT"