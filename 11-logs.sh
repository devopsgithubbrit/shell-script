#!/bin/bash

ID=$(id -u)
echo "script name = $0"

VALIDATE(){
if [ $1 -ne 0 ]
then 
    echo "ERROR:: $2 is failed"
    exit 1
else
    echo "$2 is SUCCESS"
fi
}
if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
else
    echo "You are root user"
fi

yum install mysql -y

VALIDATE $? "Mysql"

yum install git -y

VALIDATE $? "GIT"

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
else
    echo "You are root user"
fi

