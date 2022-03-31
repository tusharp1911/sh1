#!/bin/bash

TZ=`timedatectl | grep "Time zone"`

CURRENT_TIME_ZONE=`date +"%Z %z"`
TIME_ZONE="IST +0530"

echo -e "\n########## CONVERT CURRENT TIME ZONE TO IST ##########"
echo -e "\n$TZ\n"

if [ "$CURRENT_TIME_ZONE" == "$TIME_ZONE" ];
  then
  echo "No Need to Convert timezone because Current Time Zone is $CURRENT_TIME_ZONE"

else
  echo "Need to Convert Current TIME ZONE To IST"
  timedatectl set-timezone Asia/Kolkata
 
  NEW_TIME_ZONE=`timedatectl | grep "Time zone"`
  echo -e "#####################################################"
  echo -e "\nNow Current Changed Time zone is $NEW_TIME_ZONE\n"
  echo -e "#####################################################"

fi
