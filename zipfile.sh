#!/bin/bash
cd /tmp/
FILE=`ls /tmp/`
for i in $FILE
do
 zip $i.zip $i

done

