#!/bin/sh
sed s#=enforcing#=disabled#g /etc/selinux/config -i
yum -y install epel-release
yum -y install curl wget lsof nethogs nmap expect telnet unzip zip htop istop tree gcc 
#chkconfig --list|grep 3:on|awk '{print $1}'|grep -Ev 'sshd|crond|rsyslog|network|udev-post|postfix|sysstat'|awk '{print "chkconfig "$1" off"}'|bash
#echo '>/etc/udev/rules.d/70-persistent-net.rules' >> /etc/rc.local
echo '*/5 * * * * /usr/sbin/ntpdate cn.ntp.org.cn >/dev/null 2>&1' > /var/spool/cron/root 

