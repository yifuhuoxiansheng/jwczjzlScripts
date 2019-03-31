# ----------------------------startInstallOS------------------------------------
sed s#=enforcing#=disabled#g /etc/selinux/config -i
echo "UseDNS no" >> /etc/ssh/sshd_config
sed -i 's#GSSAPIAuthentication yes#GSSAPIAuthentication no#g' /etc/ssh/sshd_config
sed -i 's#^PasswordAuthentication yes#PasswordAuthentication no#g' /etc/ssh/sshd_config
#chkconfig --list|grep 3:on|awk '{print $1}'|grep -Ev 'sshd|crond|rsyslog|network|udev-post|postfix|sysstat'|awk '{print "chkconfig "$1" off"}'|bash
#echo '>/etc/udev/rules.d/70-persistent-net.rules' >> /etc/rc.local
#添加静态路由
#route add -net 172.16.2.0 netmask 255.255.255.0 gw 192.168.1.2
echo '*/5 * * * * /usr/sbin/ntpdate ntp1.aliyun.com >/dev/null 2>&1' > /var/spool/cron/root 
#修改 Linux 系统打开最大文件数
vi /etc/security/limits.conf
*             soft    nofile         204800
*             hard    nofile         204800
*             soft    nproc          204800
*             hard    nproc          204800
#内核优化 [~]
vi /etc/sysctl.conf
net.ipv4.tcp_syncookies = 1
net.ipv4.tcp_tw_reuse = 1
net.ipv4.tcp_tw_recycle = 0
net.ipv4.tcp_fin_timeout = 30
net.core.somaxconn = 40960
#阿里云
root soft nofile 65535
root hard nofile 65535
* soft nofile 65535
* hard nofile 65535

# sysctl -p
yum -y install epel-release
yum -y install curl wget lsof nethogs nmap expect telnet unzip zip htop tcpdump iotop tree gcc net-tools bash-completion mtr ntpdate git psmisc
#查看现在打开的文件数
cat /proc/sys/fs/file-nr 
#修改字符集
localedef -c -f UTF-8 -i zh_CN zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8
echo 'LANG="zh_CN.UTF-8"' > /etc/locale.conf
#查看现在的 tcp 链接情况
netstat -an|awk '/^tcp/{++S[$NF]}END{for (a in S)print a,S[a]}' 
# tcpdump 抓包
tcpdump -i em1 -X -s 0 -w /tmp/0320_99.pcap
tcpdump -i em1 -X -s 0 host 101.200.52.240 -w /tmp/1217qxtongbt1.pcap
# 设置 ssh 端口 DNS GSS 等
#nginx------------------------
vi /etc/yum.repos.d/nginx.repo
------------------------------
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/centos/7/$basearch/
gpgcheck=0
enabled=1
------------------------------
#linux 切割大文件
split -b 100m
# systemctl 相关
systemctl 是管制服务的主要工具,它整合了chkconfig 与 service功能于一体。
systemctl is-enabled iptables.service   #查询防火墙是否开机启动
systemctl restart sshd #有可能不需要加service
systemctl is-enabled servicename.service #查询服务是否开机启动
systemctl enable *.service #开机运行服务
systemctl disable *.service #取消开机运行
systemctl start *.service #启动服务
systemctl stop *.service #停止服务
systemctl restart *.service #重启服务
systemctl reload *.service #重新加载服务配置文件
systemctl status *.service #查询服务运行状态
systemctl --failed #显示启动失败的服务
# ---------------------------------防火墙----------------------------------------
# 防火墙开放端口:
firewall-cmd --add-port=2181/tcp --permanent
# 机器禁 ping
firewall-cmd --add-rich-rule='rule protocol value=icmp drop' --permanent
# 防火墙白名单:
firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address='192.168.1.10' port protocol='tcp' port='1521' accept"
# 移除白名单:
firewall-cmd --permanent --remove-rich-rule="rule family='ipv4' source address='0.0.0.0/0' port protocol='tcp' port='1521' accept"
# 禁止ip地址访问
firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address='140.205.201.0/28' reject"
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
---------------------------- rabbitMQ ------------------------------
yum -y install socat
wget http://www.rabbitmq.com/releases/erlang/erlang-19.0.4-1.el7.centos.x86_64.rpm &&\
rpm-ivh erlang-19.0.4-1.el7.centos.x86_64.rpm &&\
wget  http://www.rabbitmq.com/releases/rabbitmq-server/v3.6.10/rabbitmq-server-3.6.10-1.el7.noarch.rpm &&\
rpm -ivhrabbitmq-server-3.6.10-1.el7.noarch.rpm
systemctl start rabbitmq-server
mkdir /etc/rabbitmq
rabbitmq-plugins enable rabbitmq_management
firewall-cmd --permanent--add-port=15672/tcp
firewall-cmd --permanent--add-port=5672/tcp
firewall-cmd --reload
rabbitmqctl add_user admin admin
rabbitmqctl set_permissions -p /admin ".*" ".*" ".*"
rabbitmqctl set_user_tags admin administrator
https://blog.csdn.net/yexiaomodemo/article/details/80473411
---------------------------- nginx ------------------------------
server_names_hash_bucket_size 128;
client_header_buffer_size 1m;
client_body_buffer_size 1m;
large_client_header_buffers 4 1m;
client_max_body_size 50m;
---------------------------- excel ------------------------------

=MOD(ROW(),2)=0
