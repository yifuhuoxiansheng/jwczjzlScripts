# ----------------------------startInstallOS------------------------------------
sed s#=enforcing#=disabled#g /etc/selinux/config -i
yum -y install epel-release
yum -y install curl wget lsof nethogs nmap expect telnet unzip zip htop iotop tree gcc net-tools bash-completion mtr ntpdate
#chkconfig --list|grep 3:on|awk '{print $1}'|grep -Ev 'sshd|crond|rsyslog|network|udev-post|postfix|sysstat'|awk '{print "chkconfig "$1" off"}'|bash
#echo '>/etc/udev/rules.d/70-persistent-net.rules' >> /etc/rc.local
echo '*/5 * * * * /usr/sbin/ntpdate cn.ntp.org.cn >/dev/null 2>&1' > /var/spool/cron/root 
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
PS1='\033[01;33m\][\u@\h ]\033[01;34m\]\W \[\033[01;36m\]\$\[\033[00m\] '
sudo scutil --set HostName Spring

