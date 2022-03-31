#!/bin/bash

#Purpose: To get ubuntu system information 
#Version: V1.0 
#Created Date: 25 Feb 2022 
#Modified Date: 28 Feb 2022 
#Author: Tushar Patole 

while (( 1 ))
do

echo "Enter the number to view ubuntu system information" 

echo "0. List CPU & Processor Info"
echo "1. Generic Hardware Information"
echo "2. Detailed info about all PCI buses and devices in the system"
echo "3. List Block Devices (Storage and Partitions)"
echo "4. Total space and available space on a file system"
echo "5. Systems Memory Usage"
echo "6. List USB Devices"
echo "7. Show Kernel Version and Network Hostname" 
echo "8. Information about Ethernet Card and their driver" 
echo "Syetm Information using inxi tool"
echo "9. Kernel and Distribution Information"
echo "10. PC model information"
echo "11. CPU and CPU Speed Information"
echo "12. Graphics Card information"
echo "13. Audio/Sound Card Information"
echo "14. Network Card Information"
echo "15. Hard Disk Information" 
echo "16. Hard Disk Partition details"
echo "17. Full Linux System Information"
echo "18. Press q to quit" 

 
read num
case ${num} in
	0) echo "List CPU & Processor Info:" 
	   lscpu
           ;;
	1) echo "Generic Hardware Information:"
	   hwinfo
	   ;; 
	2) echo "Detailed info about all PCI buses and devices in the system:"
	   lspci
	   ;;
	3) echo "List Block Devices (storage and partition):" 
	   lsblk
	   ;;
 	4) echo "Total space and available space on a file system:"
	   df -h
	   ;;
	5) echo "Systems Memory usage:"
	   free
	   ;;
	6) echo "List USB Devices:"
	   lsusb
	   ;;
	7) echo "Show Kernel Version and Network Hostname:"
	   uname -a
	   ;;
	8) echo "Information about Ethernet Card and their driver"
	   sudo lshw -class network
	   ;;
	9) echo "Kernel and Distribution Information"
	   inxi -S
	   ;;
	10) echo "PC model Information"
	    inxi -M
	    ;;
	11) echo "CPU and CPU Speed Information"
	    inxi -C
	    ;;
	12) echo "Graphics Card Information"
	    inxi -G
	    ;;
	13) echo "Audio/Sound Card Information"
	    inxi -A
	    ;;
	14) echo "Network Card Information"
	    inxi -N
	    ;;
 	15) echo "Hard Disk Information"
	    inxi -D
	    ;;
	16) echo "Hard Disk Partition Details"
	    inxi -p
	    ;;
	17) echo "Linux System Full Information"
	    inxi -F
	    ;;
	q) echo "Press q to quit:" 
	   exit 1
	   ;;

esac

done 
