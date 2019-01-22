#!/bin/bash

A=0
while [ $A -lt 20 ]
  do
	A=` expr $A + 1`
	echo "the number is $A"
  done
