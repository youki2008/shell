#!/bin/bash

#while echo -e "\033[32m Select your want exec cammand: \033[0m"

#do
	PS3="Select your want exec cammand:"
	select a in "ifconfig -a" "hostname" "cat /etc/hosts" "df -h" 
	do 
		echo -e "\033[35mYour select cammand is:\033[0m $a" 
	 case $a in
         "ifconfig -a")
		ifconfig -a
		;;
	 "hostname")
		hostname
		;;
	 "cat /etc/hosts")
		cat /etc/hosts
		;;
	 "df -h")
		df -h
		;;
	 *)
		exit
		;;
	 esac
	 
        break 2
	done
#done


