#!/bin/bash

ip=192.168.101.2 

if [[ $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "success - valid ip"
else
  echo "fail - ivalid ip" 
fi
