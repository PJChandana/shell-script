#!/bin/bash

$ID=( $id -u )
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script name: $0"

VALIDATE(){
    if [$1 -ne 0]
    then
        echo " ERROR: $2 .. falied"
        exit 1
    else  
        echo "$2 .. SUCCES"
    fi
}

if  [$ID -ne 0]
then
    echo: "ERROR: please run this script"
else
    echo: "you are the root user"
fi

yum install mysql -y &>>LOGFILE

VALIDATE "installing MYSQL"

yum install git -y &>>LOGFILE

VALIDATE " Installing GIT"-
