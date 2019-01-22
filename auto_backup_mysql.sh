#!/bin/bash
#auto backup mysql database
#by authors wangzhong 20160324

backup_dir=/root/mysql/`date +%Y%m%d`
mysqlusr=root
mysqlpwd=dslserver
mysqlcmd=/usr/bin/mysqldump
DB=mysql

if [ $UID -ne 0 ];then
	echo -e " \033[32m your must use root user to exec shell\033[0m"
        exit
fi


if [ ! -d $backup_dir ];then
	mkdir -p $backup_dir
	echo -e "\033[32m Create $backup_dir Succssfully \033[0m"
else
	rm -rf $backup_dir
        mkdir -p $backup_dir
	echo -e "\033[32m $backup_dir exist, rebuld the $backup_dir successfully\033[0m"
fi


$mysqlcmd -u $mysqlusr -p$mysqlpwd -d $DB > $backup_dir/mysql.sql


if [ $? -eq 0 ];then
	echo -e "\033[32m backup $database successfully\033[0m"
else
	echo -e "\033[32m backup $database failed,Please check!\033[0m"
fi
