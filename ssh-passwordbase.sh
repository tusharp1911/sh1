#!/bin/bash

echo -e "\n########### SSH Password Base Login Script ###########\n"

echo -e "Host Machine: $HOSTNAME"
echo -e "Currently Logged in user:`whoami`"
echo -e "Enter Username of Remote Machine: "
read username
echo -e -n "\nEnter IP Address of Remote Machine in This Format: AAA.AAA.AAA.AAA\n"
read ip

echo "**********************************************************"
echo "*                                                        *"
echo "* Connecting To Remote Machine: $ip                       "   
echo "*                                                        *"
echo "**********************************************************"

ssh $username@$ip
