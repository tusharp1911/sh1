#!/bin/bash

#Purpose: Menu program to enter into any timezone and convert to IST
#Version: V1.0 
#Created Date: 
#Modified Date:  
#Author: Tushar Patole 

main_menu()
{
while :
do

echo "################################################################"
echo "#                                                              #"
echo "# Menu Driven Time Zone switching from anything to IST  Script #"
echo "#                                                              #"
echo "################################################################"        

echo "[1] Asia"
echo "[2] Africa"
echo "[3] Europe"
echo "[4] North & South America"
echo "[5] pacific Oceania "
echo "[6] Austrailia"
echo "[7] Antartica"
echo "[8] Exit "
echo "========================================================="
echo -e "Enter Your Menu Choice  [1-7]: \c "

read menu

case "$menu" in

      1) menu_1;;
      2) menu_2;;
      3) menu_3;;
      4) menu_4;;
      5) menu_5;;
      6) menu_6;;
      7) menu_7;;
      8) exit 0;;
            
      *) echo -e "\n Please Select Correct Choice";
         echo "Press ENTER To Continue..." ; read ;;
 
esac 

done
}
 
menu_1()
{
echo "******************************* Asia ************************************"
echo -e "\n"
timedatectl list-timezones | grep Asia > asia.txt
mapfile -t options < asia.txt
select items in "${options[@]}";
do 
  echo -e "\nyou picked Time zone : $items ($REPLY)"
timezones=($items) 
timedatectl set-timezone $timezones
change=`timedatectl`
echo -e "\n Changed Time Zone is :\n\n $change"

TZ=`timedatectl | grep "Time zone"`
CURRENT_TIME_ZONE=`date +"%Z %z"`
TIME_ZONE="IST +0530"

echo -e "\n########## CONVERT CURRENT TIME ZONE TO IST ##########"
echo -e "\n$TZ\n"

if [ "$CURRENT_TIME_ZONE" == "$TIME_ZONE" ];
  then
  echo "No Need to convert TZ because Current TZ is $CURRENT_TIME_ZONE"

else
  echo "Need to Convert Current TIME ZONE To IST"
  timedatectl set-timezone Asia/Kolkata
 
  NEW_TIME_ZONE=`timedatectl | grep "Time zone"`
  echo -e "#######################################################"
  echo -e "#                                                     #"
  echo -e "\nNow Current Changed Time zone is $NEW_TIME_ZONE\n"
  echo -e "#                                                     #"
  echo -e "#######################################################"
fi

echo -e "\n Press Enter To Main Menu...."
read
return
done
}

menu_2()
{
echo "***************************** Africa *******************************"

echo -e "\n"
timedatectl list-timezones | grep Africa > africa.txt
mapfile -t options < africa.txt
select items in "${options[@]}";
do
  echo -e "\nyou picked Time zone : $items ($REPLY)"
timezones=($items)
timedatectl set-timezone $timezones
change=`timedatectl`
echo -e "\n Changed Time Zone is :\n\n $change"

TZ=`timedatectl | grep "Time zone"`
CURRENT_TIME_ZONE=`date +"%Z %z"`
TIME_ZONE="IST +0530"

echo -e "\n########## CONVERT CURRENT TIME ZONE TO IST ##########"
echo -e "\n$TZ\n"

if [ "$CURRENT_TIME_ZONE" == "$TIME_ZONE" ];
  then
  echo "No Need to convert TZ because Current TZ is $CURRENT_TIME_ZONE"

else
  echo "Need to Convert Current TIME ZONE To IST"
  timedatectl set-timezone Asia/Kolkata
 
  NEW_TIME_ZONE=`timedatectl | grep "Time zone"`
  echo -e "#######################################################"
  echo -e "#                                                     #"
  echo -e "\nNow Current Changed Time zone is $NEW_TIME_ZONE\n"
  echo -e "#                                                     #"
  echo -e "#######################################################"
fi

echo -e "\n Press Enter To Continue...."
read
 return
done
}

menu_3()
{
echo "****************************** Europe **********************************"
echo -e "/n"
timedatectl list-timezones | grep Europe > europe.txt
mapfile -t options < europe.txt
select items in "${options[@]}";
do
  echo -e "\nyou picked Time zone : $items ($REPLY)"
timezones=($items)
timedatectl set-timezone $timezones
change=`timedatectl`
echo -e "\n Changed Time Zone is :\n\n $change"

TZ=`timedatectl | grep "Time zone"`
CURRENT_TIME_ZONE=`date +"%Z %z"`
TIME_ZONE="IST +0530"

echo -e "\n########## CONVERT CURRENT TIME ZONE TO IST ##########"
echo -e "\n$TZ\n"

if [ "$CURRENT_TIME_ZONE" == "$TIME_ZONE" ];
  then
  echo "No Need to convert TZ because Current TZ is $CURRENT_TIME_ZONE"

else
  echo "Need to Convert Current TIME ZONE To IST"
  timedatectl set-timezone Asia/Kolkata
 
  NEW_TIME_ZONE=`timedatectl | grep "Time zone"`
  echo -e "#######################################################"
  echo -e "#                                                     #"
  echo -e "\nNow Current Changed Time zone is $NEW_TIME_ZONE\n"
  echo -e "#                                                     #"
  echo -e "#######################################################"
fi

echo -e "\n Press Enter To Continue...."
read
 return
done
}

menu_4()
{
echo "****************************** North & South America**********************************"
echo -e "\n"
timedatectl list-timezones | grep America > america.txt
mapfile -t options < america.txt
select items in "${options[@]}";
do
  echo -e "\nyou picked Time zone : $items ($REPLY)"
timezones=($items)
timedatectl set-timezone $timezones
change=`timedatectl`
echo -e "\n Changed Time Zone is :\n\n $change"

TZ=`timedatectl | grep "Time zone"`
CURRENT_TIME_ZONE=`date +"%Z %z"`
TIME_ZONE="IST +0530"

echo -e "\n########## CONVERT CURRENT TIME ZONE TO IST ##########"
echo -e "\n$TZ\n"

if [ "$CURRENT_TIME_ZONE" == "$TIME_ZONE" ];
  then
  echo "No Need to convert TZ because Current TZ is $CURRENT_TIME_ZONE"

else
  echo "Need to Convert Current TIME ZONE To IST"
  timedatectl set-timezone Asia/Kolkata
 
  NEW_TIME_ZONE=`timedatectl | grep "Time zone"`
  echo -e "#######################################################"
  echo -e "#                                                     #"
  echo -e "\nNow Current Changed Time zone is $NEW_TIME_ZONE\n"
  echo -e "#                                                     #"
  echo -e "#######################################################"
fi

echo -e "\n Press Enter To Continue...."
read
 return
done
}

menu_5()
{
echo "******************************  Pacific Ocean **********************************"
echo -e "\n"
  timedatectl list-timezones | grep Pacific > pacificocean.txt
mapfile -t options < pacificocean.txt
select items in "${options[@]}";
do
  echo -e "\nyou picked Time zone : $items ($REPLY)"
timezones=($items)
timedatectl set-timezone $timezones
change=`timedatectl`
echo -e "\n Changed Time Zone is :\n\n $change"

TZ=`timedatectl | grep "Time zone"`
CURRENT_TIME_ZONE=`date +"%Z %z"`
TIME_ZONE="IST +0530"

echo -e "\n########## CONVERT CURRENT TIME ZONE TO IST ##########"
echo -e "\n$TZ\n"

if [ "$CURRENT_TIME_ZONE" == "$TIME_ZONE" ];
  then
  echo "No Need to convert TZ because Current TZ is $CURRENT_TIME_ZONE"

else
  echo "Need to Convert Current TIME ZONE To IST"
  timedatectl set-timezone Asia/Kolkata
 
  NEW_TIME_ZONE=`timedatectl | grep "Time zone"`
  echo -e "#######################################################"
  echo -e "#                                                     #"
  echo -e "\nNow Current Changed Time zone is $NEW_TIME_ZONE\n"
  echo -e "#                                                     #"
  echo -e "#######################################################"
fi

echo -e "\n Press Enter To Continue...."
read
 return
done
}

menu_6()
{
echo "****************************** Australia  **********************************"
echo -e "\n"
  timedatectl list-timezones | grep Australia > australia.txt
mapfile -t options < australia.txt
select items in "${options[@]}";
do
  echo -e "\nyou picked Time zone : $items ($REPLY)"
timezones=($items)
timedatectl set-timezone $timezones
change=`timedatectl`
echo -e "\n Changed Time Zone is :\n\n $change"
TZ=`timedatectl | grep "Time zone"`
CURRENT_TIME_ZONE=`date +"%Z %z"`
TIME_ZONE="IST +0530"

echo -e "\n########## CONVERT CURRENT TIME ZONE TO IST ##########"
echo -e "\n$TZ\n"

if [ "$CURRENT_TIME_ZONE" == "$TIME_ZONE" ];
  then
  echo "No Need to convert TZ because Current TZ is $CURRENT_TIME_ZONE"

else
  echo "Need to Convert Current TIME ZONE To IST"
  timedatectl set-timezone Asia/Kolkata
 
  NEW_TIME_ZONE=`timedatectl | grep "Time zone"`
  echo -e "#######################################################"
  echo -e "#                                                     #"
  echo -e "\nNow Current Changed Time zone is $NEW_TIME_ZONE\n"
  echo -e "#                                                     #"
  echo -e "#######################################################"
fi

echo -e "\n Press Enter To Continue...."
read
 return
done
}

menu_7()
{
echo "****************************** Antarctica **********************************"
echo -e "\n"
  timedatectl list-timezones | grep Antarctica > antarctica.txt
mapfile -t options < antarctica.txt
select items in "${options[@]}";
do
  echo -e "\nyou picked Time zone : $items ($REPLY)"
timezones=($items)
timedatectl set-timezone $timezones
change=`timedatectl`
echo -e "\n Changed Time Zone is :\n\n $change"

TZ=`timedatectl | grep "Time zone"`
CURRENT_TIME_ZONE=`date +"%Z %z"`
TIME_ZONE="IST +0530"

echo -e "\n########## CONVERT CURRENT TIME ZONE TO IST ##########"
echo -e "\n$TZ\n"

if [ "$CURRENT_TIME_ZONE" == "$TIME_ZONE" ];
  then
  echo "No Need to convert TZ because Current TZ is $CURRENT_TIME_ZONE"

else
  echo "Need to Convert Current TIME ZONE To IST"
  timedatectl set-timezone Asia/Kolkata
 
  NEW_TIME_ZONE=`timedatectl | grep "Time zone"`
  echo -e "#######################################################"
  echo -e "#                                                     #"
  echo -e "\nNow Current Changed Time zone is $NEW_TIME_ZONE\n"
  echo -e "#                                                     #"
  echo -e "#######################################################"
fi

echo -e "\n Press Enter To Continue...."
read
 return
done
}

menu_8()
{
 echo "Exit"
echo -e "\n Press Enter To Continue...."
read
 return

}

main_menu

