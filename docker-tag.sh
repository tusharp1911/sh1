#!/bin/bash

#Purpose: Docker image tagging 
#Version: 1.0
#Created Date: 
#Modified Date: 
#Author: Tushar Patole

docker images -a

echo -n "Enter the name of docker_hub_repo: "
read repo_name
echo -n "Enter the image name u want to give: "
read image_name
echo -n "Enter the name of image you want to increment the tag: "
read image_incre_name


docker build -t $repo_name/$image_name:$(docker images | awk '($1 == "'$image_incre_name'") {print $2 += .1; exit}') .
