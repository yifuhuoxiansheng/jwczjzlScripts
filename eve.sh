#!/bin/bash
nowx="$(date -d "1 day ago" +"%Y-%m-%d")"
totalx=`egrep "QxtOuthCheckServiceImpl" /data/logs/biz/source/source.log.$nowx|wc -l`
over1000=`egrep "QxtOuthCheckServiceImpl" /data/logs/biz/source/source.log.$nowx|awk '{match($0,/.+costtime=([0-9]+)/,a)};{if (a[1]>1000) print $0}'|wc -l`
over2000=`egrep "QxtOuthCheckServiceImpl" /data/logs/biz/source/source.log.$nowx|awk '{match($0,/.+costtime=([0-9]+)/,a)};{if (a[1]>2000) print $0}'|wc -l`
over5000=`egrep "QxtOuthCheckServiceImpl" /data/logs/biz/source/source.log.$nowx|awk '{match($0,/.+costtime=([0-9]+)/,a)};{if (a[1]>5000) print $0}'|wc -l`
over10000=`egrep "QxtOuthCheckServiceImpl" /data/logs/biz/source/source.log.$nowx|awk '{match($0,/.+costtime=([0-9]+)/,a)};{if (a[1]>10000) print $0}'|wc -l`
awk 'BEGIN {print "大于1秒占比:" '$over1000'/'$totalx'}' >> /tmp/QxtOuth/$nowx &&\
awk 'BEGIN {print "大于2秒占比:" '$over2000'/'$totalx'}' >> /tmp/QxtOuth/$nowx &&\
awk 'BEGIN {print "大于5秒占比:" '$over5000'/'$totalx'}' >> /tmp/QxtOuth/$nowx &&\
awk 'BEGIN {print "大于10秒占比:" '$over10000'/'$totalx'}' >> /tmp/QxtOuth/$nowx &&\
echo "-----------------下面是超时10秒以上的日志-------------------" >> /tmp/QxtOuth/$nowx &&\
egrep "QxtOuthCheckServiceImpl" /data/logs/biz/source/source.log.$nowx|awk '{match($0,/.+costtime=([0-9]+)/,a)};{if (a[1]>10000) print $1" "$2" "$6" "$10" "$14}' >>/tmp/QxtOuth/$nowx


#shell计算中使用除法，基本默认上都是整除。
#比如：
#num1=2
#num2=3
#num3=`expr $num1 / $num2`
#这个时候num3=0 ,是因为是因为expr不支持浮点除法
#解决的方法：
#num3=`echo "sclae=2; $num1/$num2" | bc`
#使用bc工具，sclae控制小数点后保留几位
#还有一种方法
#awk 'BEGIN{printf "%.2f\n",’$num1‘/’$num2‘}'
#如果用百分比表示
#awk 'BEGIN{printf "%.2f%\n",(’$num1‘/’$num2‘)*100}'
