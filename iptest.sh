#! /bin/bash
# authors wangzhong 20160322
 
echo -e  '\033[32m请输入你需要查询的网段，例如192.168.1\033[0m'

read net

for ip in  `seq 0 255`

   do
    
    { 
    
     ping -c 1 $net.$ip >/dev/null 2>&1
     
     if [ $? -eq 0 ] ; then
      
       echo -e "\033[32m$net.$ip is up\033[0m"
   
     else 
    
       echo -e "\033[32m$net.$ip is down\033[0m"
     
     fi
     
     }&
done

wait   

