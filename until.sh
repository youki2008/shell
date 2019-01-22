#!/bin/bash

a=0
until [ $a -gt 19 ]
  do
	a=`expr $a + 1`
	echo "The number is $a"
  done
