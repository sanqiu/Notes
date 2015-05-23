Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-09-01T17:52:04+08:00

====== SSH ======
Created Monday 01 September 2014

man 5 hosts_access

== Config ==
AllowUsers fsmythe bnice swilson
DenyUsers jhacker joebadguy jripper
PermitEmptyPasswords no
LogLevel DEBUG

== Utility ==
**Verifying** ssh-key fingerprint before connect
ssh-keyscan -t rsa host -p 22 > /tmp/file.pub
ssh-keygen -lf	  /tmp/file.pub
ssh-copy-id [-i [keys]] user@host

**generating**
ssh-keygen -t rsa -b 4096
system-wide ssh keys is here : /etc/ssh/

== Forwarding ==
应用方向与ssh方向一致为本地转发，否则为远程转发。
ssh -L 1080:server:port server   ## static forward
ssh -NL localport: remoteserver: serverport SSHserver 
ssh -NL 3306:localhost:3306 dalidi@ server.com ## mysql -h host -u user -p 
ssh -R 
ssh -D 1080 server  ## danymic forward
ssh-agent 
 
