#!/bin/bash
# author : jwczjzl
# at 2018-08-08
echo "--------------------------------------------------------------------------------" >> /var/log/jwczjzl.log
echo "[$(date +"%Y-%m-%d %H:%M:%S")] [info] : Log compression programs began to run " >> /var/log/jwczjzl.log
echo "--------------------------------------------------------------------------------" >> /var/log/jwczjzl.log
jwcDate="$(date -d "2 day ago" +"%Y-%m-%d")"
for i in cmpp_feg_01_tomcat9_58001 cmpp_route_01_tomcat9_58004 cmpp_smg_01_tomcat9_58002
 do
    jwcPath=/logs/$i/tomcatlogs
    if [ -d "$jwcPath" ]
    then
        cd $jwcPath
        fileName="catalina.out.$jwcDate"
        if [ -f "$fileName" ]
        then
            afterGzip="catalina.out.$jwcDate.gz"
            gzip -9 -f $fileName && mv $afterGzip bak/ && echo "[$(date +"%Y-%m-%d %H:%M:%S")] [ok] : <$jwcPath/$fileName> is GZIP <$afterGzip> move to bak dir" >> /var/log/jwczjzl.log
        else
            echo "[$(date +"%Y-%m-%d %H:%M:%S")] [file_error] : <$jwcPath/$fileName> file is not found" >> /var/log/jwczjzl.log
        fi
    else
        echo "[$(date +"%Y-%m-%d %H:%M:%S")] [path_error] : <$jwcPath> directory is  not found" >> /var/log/jwczjzl.log
    fi
done
