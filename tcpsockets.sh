#!/bin/bash

thisnode=`/usr/bin/hostname`

/usr/bin/echo "# HELP node_tcp_sockets_established tcp socket counter"
/usr/bin/echo "# TYPE node_tcp_sockets_established counter"

concurrensys=`/usr/bin/netstat -antp|/usr/bin/grep 'ESTABLISHED' -c`
/usr/bin/echo "node_tcp_sockets_established{node=\"${thisnode}\"} $concurrensys"

#### 放置目录
[root@yunwei-cmdb prom]# pwd
/root/soft/node_exporter-1.7.0.linux-amd64/prom
[root@yunwei-cmdb prom]# 
[root@yunwei-cmdb prom]# ls
tcpsockets.prom  tcpsockets.sh
[root@yunwei-cmdb prom]# 
[root@yunwei-cmdb prom]# cat tcpsockets.prom 
# HELP node_tcp_sockets_established tcp socket counter
# TYPE node_tcp_sockets_established counter
node_tcp_sockets_established{node="yunwei-cmdb"} 7
