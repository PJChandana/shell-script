#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo " ERROR: $2 .. failed"
        exit 1
    else  
        echo "$2 .. SUCCESS"
    fi
}

if  [ $ID -ne 0 ]
then
    echo "ERROR: please run this script"
else
    echo "you are the root user"
fi

yum install mysql -y &>>LOGFILE

VALIDATE "installing MYSQL"

yum install git -y &>>LOGFILE

VALIDATE " Installing GIT"-
