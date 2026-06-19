#! /usr/bin/bash

echo "Enter any key to continue"

while 'true'
do
    read -t 3 -n 1
    if [ $? = 0 ]
    then
        echo "you have entered a key"
        exit;
    else
        echo "waiting...."
    fi
done