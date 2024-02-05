#!/bin/bash

ID=$(id-u)

if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR: run this script with root access $N"
    exit 1
else
    echo "You are roort user"
fi

echo "All args passed: $@"

