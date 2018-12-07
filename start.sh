# ----------------------------startInstallOS------------------------------------
sed s#=enforcing#=disabled#g /etc/selinux/config -i
yum -y install epel-release
yum -y install curl wget lsof nethogs nmap expect telnet unzip zip htop iotop tree gcc net-tools bash-completion mtr ntpdate git psmisc
#chkconfig --list|grep 3:on|awk '{print $1}'|grep -Ev 'sshd|crond|rsyslog|network|udev-post|postfix|sysstat'|awk '{print "chkconfig "$1" off"}'|bash
#echo '>/etc/udev/rules.d/70-persistent-net.rules' >> /etc/rc.local
#添加静态路由
#route add -net 172.16.2.0 netmask 255.255.255.0 gw 192.168.1.2
echo '*/5 * * * * /usr/sbin/ntpdate cn.ntp.org.cn >/dev/null 2>&1' > /var/spool/cron/root 
#修改 Linux 系统打开最大文件数
echo "* soft nofile 102400" >> /etc/security/limits.conf
echo "* hard nofile 104800" >> /etc/security/limits.conf
#查看现在打开的文件数
cat /proc/sys/fs/file-nr 

# 设置 ssh 端口 DNS GSS 等
# ---------------------------------防火墙----------------------------------------
# 防火墙开放端口:
firewall-cmd --add-port=2181/tcp --permanent
# 防火墙白名单:
firewall-cmd --permanent --add-rich-rule="rule family="ipv4" source address="192.168.1.10" port protocol="tcp" port="1521" accept"
# 移除白名单:
firewall-cmd --permanent --remove-rich-rule="rule family="ipv4" source address="0.0.0.0/0" port protocol="tcp" port="1521" accept"
# 添加默认区域放行:
cp /usr/lib/firewall/servers/ssh.xml /etc/firewall/servers/ 再修改 /etc/firewall/zone/public.xml 
# ---------------------------influxDB 备份/还原-----------------------------------
influxd backup -database idtag /backup/influxdb
influxd restore -database idtag -datadir /var/lib/influxdb/data .
influxd restore -metadir /var/lib/influxdb/meta/ .
# ------------------------MongoDB 备份/还原/查询/修改------------------------------
mongodump -h 192.168.1.183:37017 -d apihub -o /root/mongobak
mongorestore -h 192.168.1.183:37017 -d apihub /root/mongodb
db.idcheck_new.find({"name":"王欢"}).pretty()
db.user.update({"appid":"anhuibeihui"},{"$set":{"apiauths.idcheck-post.currentprice.price":0.1}})
# -------------------------------JDK环境变量--------------------------------------
JAVA_HOME=/usr/java/jdk1.8.0_171-amd64
JRE_HOME=$JAVA_HOME/jre
PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin
CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib/dt.jar
export JAVA_HOME JRE_HOME PATH CLASSPATH
# -------------------------history自动记录访问者信息-------------------------------
export HISTTIMEFORMAT="[%Y.%m.%d %H:%M:%S]"
USER_IP=`who -u am i 2>/dev/null| awk '{print $NF}'|sed -e 's/[()]//g'`
HISTDIR=/var/log/.hist
if [ -z $USER_IP ]
then
USER_IP=`hostname`
fi
if [ ! -d $HISTDIR ]
then
mkdir -p $HISTDIR
chmod 777 $HISTDIR
fi
if [ ! -d $HISTDIR/${LOGNAME} ]
then
mkdir -p $HISTDIR/${LOGNAME}
chmod 700 $HISTDIR/${LOGNAME}
fi
export HISTSIZE=4096
DT=`date +%Y%m%d_%H%M%S`
export HISTFILE="$HISTDIR/${LOGNAME}/${USER_IP}.hist.$DT"
chmod 600 $HISTDIR/${LOGNAME}/*.hist* 2>/dev/null
find $HISTDIR/${LOGNAME}/ -type f -mtime +30 -exec rm -rf {} \;
# ------------------------------ MacBookPro Terminal ------------------------------
sudo chmod a+w /etc/profile
vi /etc/profile #添加下面的 PS 变量
PS1='\033[01;33m\][\u@\h ]\033[01;34m\]\W \[\033[01;36m\]\$\[\033[00m\] '
sudo chmod a-w /etc/profile
sudo scutil --set HostName Spring
# 禁止 AdobeCreativeCloud 开机启动
launchctl unload -w /Library/LaunchAgents/com.adobe.AdobeCreativeCloud.plist
# ------------------------------ 阿里云 ------------------------------
# 卸载 "安骑士"
wget http://update.aegis.aliyun.com/download/uninstall.sh
chmod +x uninstall.sh
./uninstall.sh
wget http://update.aegis.aliyun.com/download/quartz_uninstall.sh
chmod +x quartz_uninstall.sh
./quartz_uninstall.sh
# 删除残余
pkill aliyun-service
rm -fr /etc/init.d/agentwatch /usr/sbin/aliyun-service
rm -rf /usr/local/aegis*
# 禁止云盾
firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address='140.205.201.0/28' reject"
firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address='140.205.201.16/29' reject"
firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address='140.205.201.32/28' reject"
firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address='140.205.225.192/29' reject"
firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address='140.205.225.200/30' reject"
firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address='140.205.225.184/29' reject"
firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address='140.205.225.183/32' reject"
firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address='140.205.225.206/32' reject"
firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address='140.205.225.205/32' reject"
firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address='140.205.225.195/32' reject"
firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address='140.205.225.204/32' reject"
