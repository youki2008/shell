#!/bin/bash
#by authors wangzhong 20160323

echo "请输入需要创建的目录名称和路径"

read dir

if [ ! -d $dir ] ; then
	mkdir -p $dir
	echo "您的目录$dir已经创建成功"
else

	echo "您输入的目录$dir已经存在,程序退出"
fi
