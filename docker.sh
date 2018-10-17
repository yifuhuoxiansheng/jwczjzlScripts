# docker centos 开启 sshd 服务

yum install passwd openssl openssh-server -y
ssh-keygen -q -t rsa -b 2048 -f /etc/ssh/ssh_host_rsa_key -N ''  
ssh-keygen -q -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N ''
ssh-keygen -t dsa -f /etc/ssh/ssh_host_ed25519_key -N '' 
vi /root/run.sh : /usr/sbin/sshd -D

# docker 相关:

-------------------- protainer_data
docker volume create protainer_data
docker run -p 9000:9000 --name portainer -h portainerServer --restart always -v "/var/run/docker.sock:/var/run/docker.sock" -v portainer_data:/data -d portainer/portainer
-------------------- mongoDB
docker run --name mongodb --restart=always -p 27017:27017 -v mongodb_config:/data/configdb -v mongodb_db:/data/db -d docker.io/mongo:3.2
-------------------- mysql
docker run -p 3306:3306 --name mysql_server --restart=always -v mysql_config:/etc/mysql/conf.d -v mysql_logs:/logs -v mysql_data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=Jkxy@mysql123 -d docker.io/mysql:5.7
-------------------- rabbitMQ
docker run -p5671:5671 -p5672:5672 -p15671:15671 -p15672:15672 -p25672:25672 --restart=always -v rabbitmq:/var/lib/rabbitmq --name rabbitmq -d docker.io/rabbitmq
-------------------- redis
docker run --name redis -p 6379:6379 --restart=always -d docker.io/redis:latest --requirepass "Jkxy@redis123"
-------------------- influxdb
docker run --name influxDB -h influxDBServer -p8086:8086 -p8083:8083 -p2003:2003 --restart=always -v influxdbData:/var/lib/influxdb -d influxdb:1.4.3
#### ss5
yum -y install pam-devel openldap-devel openssl-devel
---------------------------------------hadoop----------------------
docker commit -a "jwczjzl" -m "hadoop" 3425885e43cd jkhadoop:v1.0
docker run --net net4hadoop --ip 172.18.0.2 --name hadoopmaster -h hadoopmaster -d ef4e3f491176 /root/run.sh
docker run --net net4hadoop --ip 172.18.0.2 --name hadoopmaster -h hadoopmaster -p 8089:8088 -v hadoopdata_master:/hadoop3  -d 1ef5c5caae64 /root/run.sh
docker run --net net4hadoop --ip 172.18.0.3 --name hadoopslave1 -h hadoopslave1 -v hadoopdata_slave1:/hadoop3  -d 6f1f2516d4ab /root/run.sh
docker run --net net4hadoop --ip 172.18.0.4 --name hadoopslave2 -h hadoopslave2 -v hadoopdata_slave2:/hadoop3  -d 6fb502cf82d5 /root/run.sh

