#!/bin/bash

ID=$(id -u)

if [$ID -ne 0]
then
    echo "ERROR :: Run the script with root user"
    exit 1
else 
    echo "You have sudo access"
fi

yum install myyyyyysql -y

if [$? -ne 0]
then 
    echo "ERROR:: Installing MYSQL is FAILED"
    exit 1
else 
    echo "Installing MYSQL is SUCCESS"
fi 

yum install git -y

if [$? -ne 0]
then 
    echo "ERROR:: Installing GIT is FAILED"
    exit 1
else 
    echo "Installing GIT is SUCCESS"
fi 