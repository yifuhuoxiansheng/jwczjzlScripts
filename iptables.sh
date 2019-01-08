#!/bin/bash

IPT=`which iptables`
$IPT -F
$IPT -X
$IPT -P INPUT DROP
$IPT -P FORWARD ACCEPT 
$IPT -P OUTPUT ACCEPT
$IPT -N syn-flood
##本地回环 内网允许任何
$IPT -A INPUT -i lo -j ACCEPT
$IPT -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
$IPT -A INPUT -m state --state NEW -s 172.31.1.0/32 -j ACCEPT
# ssh 端口开放 任何IP
$IPT -A INPUT -m state --state NEW -p tcp --dport 20022 -j ACCEPT
# 根据需求填写相应的端口
# $IPT -A INPUT -p tcp -m multiport --dports 80,8087,89 -j ACCEPT
# zabbix监控地址
# $IPT -A INPUT -p tcp -s zabbix.ip -m state --state NEW -m tcp --dport 10050 -j ACCEPT
# ICMP 规则控制
$IPT -A INPUT -p icmp -m limit --limit 100/sec --limit-burst 100 -j ACCEPT
$IPT -A INPUT -p icmp -m limit --limit 1/s --limit-burst 10 -j ACCEPT
# DOS防护
$IPT -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,ACK SYN -j syn-flood
$IPT -A INPUT -j REJECT --reject-with icmp-host-prohibited
$IPT -A syn-flood -p tcp -m limit --limit 3/sec --limit-burst 6 -j RETURN
$IPT -A syn-flood -j REJECT --reject-with icmp-port-unreachable
#开启端口
#$IPT -I INPUT -m state --state NEW -m tcp -p tcp --dport 11243 -j ACCEPT
#$IPT -I INPUT -m state --state NEW -m udp -p udp --dport 11243 -j ACCEPT
