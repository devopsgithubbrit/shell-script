#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
else
    echo "You are root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "ERROR:: Installing Mysql is failed"
    exit 1
else
    echo "Installing Mysql is SUCCESS"
fi

yum install git -y

if [ $? -ne 0 ]
then 
    echo "ERROR:: Installing GIT is failed"
    exit 1
else
    echo "Installing GIT is SUCCESS"
fi