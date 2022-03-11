#!/bin/bash
ping -c2 localhost 

if [ $? -eq 0 ]
then
  echo "IP address is valid"
else
  echo "IP address is not valid"
fi
