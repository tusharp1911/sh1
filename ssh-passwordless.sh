#!/bin/bash

SSHKEY=$HOME/.ssh/id_rsa.pub

echo -e "\n########### SSH Passwordless Login Script ###########\n"

echo -e "Host Machine: $HOSTNAME"
echo -e "Currently Logged in user:`whoami`"
echo -e "\nEnter Username of Remote Machine: "
read username
echo -e -n "\nEnter IP Address of Remote Machine in this Format: AAA.AAA.AAA.AAA\n"
read ip

ping -c1 $ip &> /dev/null  

if [ $? -eq 0 ]          
  then
    echo -e "\n\nServer $ip is Available to Connect !!!"
    
      #If connection Successful:- 
      # -First Check SSH Keys Are Present on Host machine or not.
      # -if not Present it will start Key Generate Process"

    if [ -f "$SSHKEY" ];
      then
        echo -e "\nSSH Keys Are Present in HOST MACHINE\n\n" 
   
        #Copy $SSHKEY to remote machine $ip"
        ssh $username@$ip 'mkdir .ssh'
        cat $SSHKEY | ssh $username@$ip 'cat >> $HOME/.ssh/authorized_keys'

        echo -e "\n SSHKEYS Successfully copyied now connecting... to $ip \n\n"

        ssh $username@$ip 'chmod 700 $HOME/.ssh; chmod 700 $HOME/.ssh/authorized_keys'
        ssh $username@$ip

    else
        echo -e "\n\n SSH Keys Not Present, Now Create New SSH Keys\n"
        echo -e "\n\n********** Key Generate Process ************\n"
        ssh-keygen -q -t rsa -N '' <<< ""$'\n'"y" 
        echo $?

        #Copy $SSHKEY to remote machine $ip"
        ssh $username@$ip 'mkdir .ssh'
        cat $SSHKEY | ssh $username@$ip 'cat >> $HOME/.ssh/authorized_keys'
        
	echo -e "\n SSHKEYS Successfully copyied now connecting... to $ip \n\n"
	
	ssh $username@$ip 'chmod 700 $HOME/.ssh; chmod 700 $HOME/.ssh/authorized_keys'
        echo -e "Keys Generating Process Completed..!!!\n\n"
        ssh $username@$ip

    fi

else
  echo "Server $ip is Not Available to Connect..!!"

fi
