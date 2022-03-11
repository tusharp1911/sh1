#!/bin/bash

a=timedatectl
 
while [ $a != "Asia/Kolkata" ]
do
        echo "switch timezone to IST" 
        timedatectl set-timezone Asia/Kolkata 
done

