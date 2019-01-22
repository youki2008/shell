#!/bin/bash

#read -p "Please input you number: " imput
PS3="Select your number id: "
select imput in '1000' '2000' '3000' '4000' '5000' '6000'
	do 
	  case $imput in 
		1000)
			echo "your select number is $imput"
			;;
		2000)
			echo "your select number is $imput"
			;;
		3000)
			echo "your select number is $imput"
			;;
		4000)
			echo "your select number is $imput"
			;;
		5000)
			echo "your select number is $imput"
			;;
		6000)
			echo "your select number is $imput"
			;;
		   *)
			echo "you not select a number,we will exit"
			;;
	  esac
	exit;
	done
