#!/bin/bash
#Authoried by wangzhong 20161110
#MYSQL数据库备份脚本，每天全备

BAKPATH=/backup
MYUSER=root
MYPASS=dslhr
MYCMD="mysql -u$MYUSER -p$MYPASS"
MYDUMP="mysqldump -u$MYUSER -p$MYPASS"
DBLIST=`$MYCMD -e "show databases;"|sed 1d|egrep -v "schema|mysql|test"`
[ ! -d $BAKPATH ] && mkdir -p $BAKPATH

for DBNAME in $DBLIST
do
   $MYDUMP $DBNAME|gzip >$BAKPATH/${DBNAME}_$(date +%F).sql.gz 
done

#删除30天之前的旧备份
find $BAKPATH -mtime +30 -name "*.gz" -exec rm -rf {} \;
