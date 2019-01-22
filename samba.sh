#!/bin/bash
#auto config samba Server
#authoried by wangzhong

read -p "请输入需要创建的部门共享用户: " user
read -p "请输入需要创建的部门共享用户密码: " passwd

useradd $user -p $passwd

(echo $passwd;echo $passwd) | smbpasswd -a $user -s

echo -e "\033[32m Samba用户创建成功!\033[0m"

cp /etc/samba/smb.conf.gz /etc/samba/smb.conf.$user

PS3="请选择需要共享的部门文件夹: "

select i in "人力资源中心" "信息中心"  "品牌推广中心" "商品中心" "工程部" "广州公司" "总裁办" "投资拓展中心" "数据组" "生产中心" "空间陈列" "美容部" "营运中心" "财务中心"

do
	case $i in

		人力资源中心)
			sed -i 's/广州公司/'$i'/g' /etc/samba/smb.conf.$user
                        chown -R $user:$user /share/$i
                        chown -R $user:$user /share/public/$i
			;;

                    信息中心)
                        sed -i 's/广州公司/'$i'/g' /etc/samba/smb.conf.$user
                        chown -R $user:$user /share/$i
                        chown -R $user:$user /share/public/$i
			;;

                品牌推广中心)
                        sed -i 's/广州公司/'$i'/g' /etc/samba/smb.conf.$user
			chown -R $user:$user /share/$i
                        chown -R $user:$user /share/public/$i
			;;

                    商品中心)
                        sed -i 's/广州公司/'$i'/g' /etc/samba/smb.conf.$user
			chown -R $user:$user /share/$i
                        chown -R $user:$user /share/public/$i
                        ;; 

                      工程部)
                        sed -i 's/广州公司/'$i'/g' /etc/samba/smb.conf.$user
			chown -R $user:$user /share/$i
                        chown -R $user:$user /share/public/$i
                        ;; 

                    广州公司)
                        sed -i 's/广州公司/'$i'/g' /etc/samba/smb.conf.$user
			chown -R $user:$user /share/$i
                        chown -R $user:$user /share/public/$i
                        ;; 

                      总裁办)
                        sed -i 's/广州公司/'$i'/g' /etc/samba/smb.conf.$user
			chown -R $user:$user /share/$i
                        chown -R $user:$user /share/public/$i
			;;

                投资拓展中心)
                        sed -i 's/广州公司/'$i'/g' /etc/samba/smb.conf.$user
			chown -R $user:$user /share/$i
                        chown -R $user:$user /share/public/$i
                        ;; 

                      数据组)
                        sed -i 's/广州公司/'$i'/g' /etc/samba/smb.conf.$user
			chown -R $user:$user /share/$i
                        chown -R $user:$user /share/public/$i
                        ;; 

                    生产中心)
                        sed -i 's/广州公司/'$i'/g' /etc/samba/smb.conf.$user
			chown -R $user:$user /share/$i
                        chown -R $user:$user /share/public/$i
                        ;; 

                    空间陈列)
                        sed -i 's/广州公司/'$i'/g' /etc/samba/smb.conf.$user
			chown -R $user:$user /share/$i
                        chown -R $user:$user /share/public/$i
                        ;; 

                      美容部)
                        sed -i 's/广州公司/'$i'/g' /etc/samba/smb.conf.$user
			chown -R $user:$user /share/$i
                        chown -R $user:$user /share/public/$i
                        ;; 

                    营运中心)
                        sed -i 's/广州公司/'$i'/g' /etc/samba/smb.conf.$user
			chown -R $user:$user /share/$i
                        chown -R $user:$user /share/public/$i
                        ;; 

                    财务中心)
                        sed -i 's/广州公司/'$i'/g' /etc/samba/smb.conf.$user
			chown -R $user:$user /share/$i
                        chown -R $user:$user /share/public/$i
                        ;; 

		           *)
                     	echo  "\033[32m 请选择正确的部门共享文件夹! \033[0m"
			;;
	esac
echo -e "\033[32m 部门共享文件夹已经设置完成，现在重启Samba服务! \033[0m"
sleep 3
service smb restart
sleep 2
break
done
