#!/bin/sh
#
##
###
####
#####
yum install libaio* -y &&\
cd /downloads &&\
wget https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-5.7.19-linux-glibc2.12-i686.tar.gz &&\
tar xf mysql-5.7.19-linux-glibc2.12-i686.tar.gz &&\
mv mysql-5.7.19-linux-glibc2.12-i686 /application/mysql-5.7.19/ &&\
useradd -M mysql -s /sbin/nologin &&\
cd /application && chown -R mysql.mysql mysql-5.7.19/
ln -s /application/mysql-5.7.19/ /application/mysql &&\
cd /application/mysql/ &&\
rm -f /etc/my.cnf &&\
bin/mysqld --initialize --basedir=/application/mysql/ --datadir=/application/mysql/data/ --user=mysql &>> /tmp/mysql.log &&\
cd /application/mysql/support-files/ && \
sed -i 's#/usr/local/mysql#/application/mysql#g' mysql.server &&\
cp mysql.server /etc/init.d/mysqld && chmod +x /etc/init.d/mysqld &&\
sed -i 's#PATH=$PATH:$HOME/bin#PATH=/application/mysql/bin:$PATH:$HOME/bin#g' ~/.bash_profile &&\
source ~/.bash_profile &&\
tail -1 /tmp/mysql.log
