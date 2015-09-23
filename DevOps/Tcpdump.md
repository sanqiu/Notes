Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-08-22T11:49:06+08:00

====== Tcpdump ======
Created Friday 22 August 2014

**tcpdump 'capture filter'**
- -D interface list
- -i Listen on interface 
- -l pipe it
- -vvvvv
- -w output to file
- -r read from file
- -ttt  delta in ms
- -p  --no-promiscuous-mode ## tcpdump default to promiscuous mode
- -A ascii mode userful for web capturing
- tcpdump 'tcp port 80 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'
- tcpdump 'gateway snup and (port ftp or ftp-data)'

