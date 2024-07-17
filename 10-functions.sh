#!/bin/bash

ID=$(id -u)

VALIDATE() {
    if [ $1 -ne 0 ]
then 
    echo "ERROR::  $2 is FAILED"
    exit 1
else 
    echo " $2 is SUCCESS"
fi 
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: Run the script with root access"
    exit 1
else 
    echo "YOU HAVE ROOT ACCESS"
fi

yum install mysql -y

VALIDATE $? "Instaalling mysql"

yum install git -y

VALIDATE $? "Installing git"