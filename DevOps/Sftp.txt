Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-09-07T21:57:04+08:00

====== Sftp ======
Created Sunday 07 September 2014

help/? 打印帮助信息。
pwd 查看远程服务器当前目录；
lpwd 查看本地系统的当前目录。
cd <dir> 将远程服务器的当前目录更改为<dir>；
lcd <dir> 将本地系统的当前目录更改为<dir>。
ls 显示远程服务器上当前目录的文件名；
ls -l 显示远程服务器上当前目录的文件详细列表；
ls <pattern> 显示远程服务器上符合指定模式<pattern>的文件名；
ls -l <pattern> 显示远程服务器上符合指定模式<pattern>的文件详细列表。
lls 显示本地系统上当前目录的文件名；
lls的其他参数与ls命令的类似。
get <file> 下载指定文件<file>；
get <pattern> 下载符合指定模式<pattern>的文件。
put <file> 上传指定文件<file>；
get <pattern> 上传符合指定模式<pattern>的文件。
progress 切换是否显示文件传输进度。
mkdir <dir> 在远程服务器上创建目录；
lmkdir <dir> 在本地系统上创建目录。
exit/quit/bye 退出sftp。
! 启动一个本地shell。
! <commandline> 执行本地命令行。
其他命令还有：chgrp, chmod, chown, ln, lumask, rename, rm, rmdir, symlink, version
