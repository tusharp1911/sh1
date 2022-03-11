#!/bin/bash
USERNAME=tushar 
HOSTS="192.168.101.17" 
SCRIPT="pwd; ls" 

for HOSTNAME in ${HOSTS} ; 
do
    ssh -o StrictHostKeyChecking=no -l ${USERNAME} ${HOSTNAME} "${SCRIPT}"
done
