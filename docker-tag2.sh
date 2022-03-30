#!/bin/bash

#Purpose: Docker image tagging 
#Version: 1.0
#Created Date: 
#Modified Date: 
#Author: Tushar Patole

echo -n "Enter the name of docker_hub_repo: "
read repo_name
echo -n "Enter the image name u want to give: "
read image_name
  
image="$repo_name/$image_name"  
  
#get timestamp for the tag  
timestamp=$(date +%Y%m%d%H%M%S)  
  
tag=$image:$timestamp  
latest=$image:latest  
  
#build image  
sudo docker build -t $tag . 
