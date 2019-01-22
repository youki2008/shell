#!/bin/bash


mem=$( free -m | awk '{print $4}' | sed -n '2p')

if [ $mem -lt 6000 ] ;then
	sync; echo 1 > /proc/sys/vm/drop_caches
else
	echo " the free memory is enough!"
fi

	
