#!/bin/bash
echo "send dataBizOnline-last.zip package to target server successfull...."
NOW=$(date "+%Y%m%d%H%M%S")
##jenkins传过来的包在/home/altman/bak/dataBiz目录
ZIP_PATH=/data/backup/dataBiz
##回滚目录
ROLL_PATH=$ZIP_PATH/rollback
if [ ! -d "$ROLL_PATH" ]; then
 mkdir -p "$ROLL_PATH"
fi
##发布目录
DEPLOY_PATH=/data/dataBiz
LAST_FILE=dataBizOnline-last.zip
BACKUP_FILE=dataBizOnline-$NOW.zip
##备份最新包
cd $DEPLOY_PATH
zip -r $ROLL_PATH/$BACKUP_FILE *
echo "back up package success."
echo "path=$ROLL_PATH/$BACKUP_FILE"
##删除deploy目录内容
mkdir -p $DEPLOY_PATH
rm -rf $DEPLOY_PATH/bin/* $DEPLOY_PATH/classes/* $DEPLOY_PATH/lib/*
echo "clear deploy path"
##最新包解压到deploy
unzip $ZIP_PATH/$LAST_FILE -d $DEPLOY_PATH
echo "unzip package success"
##启动(在启动脚本里面请先shutdown)
export BUILD_ID=jkxyOnlineBiz
##export JAVA_HOME=/usr/local/java
nohup  sh $DEPLOY_PATH/bin/shutdown-data.sh 1>>/dev/null 2>>/dev/null &
##启动dubbo
nohup  sh $DEPLOY_PATH/bin/startup-data.sh 1>>/dev/null 2>>/dev/null &
echo "start data service success"
