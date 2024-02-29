#!/bin/bash

ID=$(id -u)

VALIDATE(){
if [ $? -ne 0 ]
then 
    echo "ERROR:: Installing is failed"
    exit 1
else
    echo "Installing  is SUCCESS"
fi
}


yum install mysql -y

VALIDATE 

yum install git -y

VALIDATE 

