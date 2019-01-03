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
