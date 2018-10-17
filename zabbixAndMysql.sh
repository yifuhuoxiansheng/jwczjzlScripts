<httpd:::>

[yum zabbix install]
rpm -i http://repo.zabbix.com/zabbix/3.0/rhel/7/x86_64/zabbix-release-3.0-1.el7.noarch.rpm
yum install zabbix-server-mysql zabbix-web-mysql zabbix-agent -y
[mysql]
alter user root@localhost identified by '>&f7/#26e:yO';
create database zabbix character set utf8 collate utf8_bin;
grant all privileges on zabbix.* to zabbix@localhost identified by 'Jwczjzl@!123';
flush privileges;
zcat /usr/share/doc/zabbix-server-mysql*/create.sql.gz | mysql -uzabbix -p zabbix
[config]
/etc/zabbix/zabbix_server.conf
启动zabbix* and httpd



<nginx:::>

[yum zabbix install]
rpm -i http://repo.zabbix.com/zabbix/3.0/rhel/7/x86_64/zabbix-release-3.0-1.el7.noarch.rpm
yum install zabbix-server-mysql zabbix-web-mysql zabbix-agent -y
[mysql]
alter user root@localhost identified by '>&f7/#26e:yO';
create database zabbix character set utf8 collate utf8_bin;
grant all privileges on zabbix.* to zabbix@localhost identified by 'Jwczjzl@!123';
flush privileges;
zcat /usr/share/doc/zabbix-server-mysql*/create.sql.gz | mysql -uzabbix -p zabbix
[config]
echo 'DBPassword=Jwczjzl@!123' >> /etc/zabbix/zabbix_server.conf
sed -i -e s#=\ apache#=\ nginx#g /etc/php-fpm.d/www.conf
chown -R nginx.nginx /var/lib/php/session
chown -R nginx.nginx /etc/zabbix/web
mkdir /home/wwwroot/zabbix -p
cp -r /usr/share/zabbix/* /home/wwwroot/zabbix/ && chown -R nginx.nginx /home/wwwroot/zabbix && chmod 755 /home/wwwroot/zabbix/*



[mysql 5.7 yum ]

wget http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
rpm -ivh mysql-community-release-el7-5.noarch.rpm
yum install mysql-community-server -y
systemctl start mysql
mysql_secure_installation
