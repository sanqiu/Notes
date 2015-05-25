Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-09-05T17:40:10+08:00

====== Package ======
Created Friday 05 September 2014

Debian与Redhat

== YUM and APT ==
YUM包管理						 	 APT包管理								备注

**yum install** package-	name    				apt-get install package-name				安装软件包
**yum remove** package-name				apt-get remove package-name				卸载软件包（保留配置文件）加入 --purge 则删除配置文件
**yum upgrade**							apt-get upgrade							更新所有已安装的软件包,apt-get dist-upgrade —— 将系统升级到新版本
**yum clean** package-name				apt-get clean								清除cache中包文件
**yumdownloader** source packag-name 		apt-get source package-name				下载程序的源代码包
**yum search** package-name				apt-cache search package-name				在软件资料库中搜索软件包
**yum info**  package-name				apt-cache show package-name				查看包信息
**yum deplist**  							aptitude why								list dependecies fo package
**repoquery --whatrequires** kde-setting		apt-cache depends rdepends					reverce dependency	

== RPM and DEB ==
RPM包管理							Debian包管理								备注
rpm  -qa								dpkg -l									查询当前系统中已安装的所有软件包
rpm  -qi package-name					dpkg -s package-name						查询系统中某个软件包的详细信息
rpm  -ql package-name 					dpkg -L package-name						显示已安装软件包的文件列表
rpm  -qf file.rpm						dpkg -S file								查询系统中指定的文件属于哪个包
rpm  -qpi file.rpm						dpkg -I pkg.deb							显示指定deb软件包文件的详细信息
rpm  -qlp file.rpm						dpkg -c pkg.deb							显示deb包中的文件列表
rpm  -ivh file.rpm						dpkg -i pkg.deb							安装deb软件包
rpm  -e package-name					dpkg -P package-name						彻底卸载deb软件包
rpm2cpio file.rpm|cpio -id				dpkg -x pkg.deb 							解包到当前目录
rpm -qpR file.rpm						apt-cache depends package-name				查询软件对环境的依赖关系
rpm --force --nodpes -i file.rpm			dpkg -i --force-all pkg.deb					强行安装软件包
rpm -qp --scripts file.rpm				dpkg -e pkg.deb 							查询管理软件包脚本
rpmbuild -bb filename.spec				dpkg -b pkg.deb							建软件包
rpm -V package-name					debsums -a package-name					校建软件包中的文件是否被修改
rpm -checksig file.rpm					debsig -c pkg.deb							检证软件包签名是否正确
rpm -qR package-name																list dependencies
