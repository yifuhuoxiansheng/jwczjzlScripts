#安装 oracle_11r2
#使用 oracle 提供的配置工具
wget http://public-yum.oracle.com/public-yum-ol7.repo -O /etc/yum.repos.d/public-yum-ol7.repo
wget http://public-yum.oracle.com/RPM-GPG-KEY-oracle-ol7 -O /etc/pki/rpm-gpg/RPM-GPG-KEY-oracle
yum install oracle-rdbms-server-11gR2-preinstall -y
#备份下面目录,此文件为安装上述文件的日志和原本的系统内核参数
/var/log/oracle-rdbms-server-11gR2-preinstall
#配置oracle系统配置文件&授权
cat >> /etc/oraInst.loc <<EOF
inventory_loc=/home/oracle/ora11g/oraInventory
inst_group=oinstall
EOF
chmod 664 /etc/oraInst.loc
#创建oracle安装的目录&授权
mkdir -p /u01/app/
mkdir /u01/tmp
chown -R oracle:oinstall /u01/app/
chmod -R 775 /u01/app/
chmod a+wr /u01/tmp
#设置 oracle 账户的密码 [oracle]
passwd oracle
#切换到 oracle 用户
cat >> /home/oracle/.bash_profile <<EOF
TMP=/u01/tmp
TMPDIR=/u01/tmp
export TMP TMPDIR
ORACLE_BASE=/u01/app/oracle
ORACLE_HOME=/u01/app/oracle/product/11.2.0/dbhome_1
ORACLE_SID=orcl
PATH=$ORACLE_HOME/bin:$PATH
export ORACLE_BASE ORACLE_SID ORACLE_HOME PATH
EOF
source .bash_profile
#切换为 root
unzip linux.x64_11gR2_database_1of2.zip
unzip linux.x64_11gR2_database_2of2.zip
mv database/ /home/oracle/database
# 权限
chown -R oracle:oinstall /home/oracle/database
#切换 oracle 配置 db_install.rsp
cp -r /home/oracle/database/response /home/oracle/rsp
#配置安装响应文件db_install.rsp文件
vi /home/oracle/rsp/db_install.rsp
#--------------------------------------------------配置样例---------------------------------------------------
oracle.install.responseFileVersion=/oracle/install/rspfmt_dbinstall_response_schema_v11_2_0
#INSTALL_DB_AND_CONFIG安装并自动配置数据库实例和监听 建议首次安装用这个
#不然配置另外两个文件，新建实例和监听
oracle.install.option=INSTALL_DB_AND_CONFIG
ORACLE_HOSTNAME=localhost
UNIX_GROUP_NAME=oinstall
INVENTORY_LOCATION=/home/oracle/ora11g/oraInventory
SELECTED_LANGUAGES=zh_CN,en
ORACLE_HOME=/u01/app/oracle/product/11.2.0/dbhome_1
ORACLE_BASE=/u01/app/oracle
oracle.install.db.InstallEdition=EE
oracle.install.db.isCustomInstall=true
oracle.install.db.customComponents=oracle.server:11.2.0.1.0,oracle.sysman.ccr:10.2.7.0.0,oracle.xdk:11.2.0.1.0,oracle.rdbms.oci:11.2.0.1.0,oracle.network:11.2.0.1.0,oracle.network.listener:11.2.0.1.0,oracle.rdbms:11.2.0.1.0,oracle.options:11.2.0.1.0,oracle.rdbms.partitioning:11.2.0.1.0,oracle.oraolap:11.2.0.1.0,oracle.rdbms.dm:11.2.0.1.0,oracle.rdbms.dv:11.2.0.1.0,orcle.rdbms.lbac:11.2.0.1.0,oracle.rdbms.rat:11.2.0.1.0
oracle.install.db.DBA_GROUP=dba
oracle.install.db.OPER_GROUP=oinstall
oracle.install.db.config.starterdb.type=GENERAL_PURPOSE
#这个是服务名
oracle.install.db.config.starterdb.globalDBName=orcl.lan
#实例sid
oracle.install.db.config.starterdb.SID=orcl
oracle.install.db.config.starterdb.characterSet=AL32UTF8
oracle.install.db.config.starterdb.memoryOption=true
#最小256M 我是学习就选择最小了
oracle.install.db.config.starterdb.memoryLimit=256
#是否安装学习的scott和hr(我就知道这两个)
oracle.install.db.config.starterdb.installExampleSchemas=true
oracle.install.db.config.starterdb.enableSecuritySettings=true
#密码全设置成oracle (安装时会提示，个人学习忽略)
oracle.install.db.config.starterdb.password.ALL=oracle
oracle.install.db.config.starterdb.control=DB_CONTROL
oracle.install.db.config.starterdb.dbcontrol.enableEmailNotification=false
oracle.install.db.config.starterdb.automatedBackup.enable=false
oracle.install.db.config.starterdb.storageType=FILE_SYSTEM_STORAGE
oracle.install.db.config.starterdb.fileSystemStorage.dataLocation=/u01/app/oracle/oradata
#true
DECLINE_SECURITY_UPDATES=true
#--------------------------------------------------配置样例---------------------------------------------------

#还是 oracle 账户
#静默安装数据库
/home/oracle/database/runInstaller -silent -ignorePrereq  -responseFile /home/oracle/rsp/db_install.rsp
#可以单开一个页面查看安装日志
tail -f  /home/oracle/ora11g/oraInventory/logs/installActions2017-09-24_12-26-49PM.log [类似的文件]
#最后安装成功后就是 Successfully Setup Software !

#切换 root 执行
/u01/app/oracle/product/11.2.0/dbhome_1/root.sh
#切换到 oracle
sqlplus / as sysdba
#查看状态
select status from v$instance;
#切换到 root 修改 oracle 启动文件
vi /etc/oratab
#在最后添加
orcl:/u01/app/oracle/product/11.2.0/dbhome_1:Y

# 启动停止 [oracle]
dbstart $ORACLE_HOME
dbshut $ORACLE_HOME

