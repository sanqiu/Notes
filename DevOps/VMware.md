Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-09-14T10:36:10+08:00

====== VMware ======
Created Sunday 14 September 2014

Kernel headers not found 
VMware Workstation 10 can be installed by following these steps. Run everything as root.

Install prerequisites.

yum install kernel-devel kernel-headers gcc
cp /usr/src/kernels/`uname -r`/include/generated/uapi/linux/version.h /lib/modules/`uname -r`/build/include/linux/
Install VMware Workstation 10 (version may differ). This is a GUI installation.

./VMware-Workstation-Full-10.0.0-1295980.x86_64.bundle
Rebuild the modules for VMware Workstation 10. If this fails, then I suggest downloading a newer version.

vmware-modconfig --console --install-all
After every kernel update the following commands can be used again.

cp /usr/src/kernels/`uname -r`/include/generated/uapi/linux/version.h /lib/modules/`uname -r`/build/include/linux/
vmware-modconfig --console --install-all
You can uninstall VMware Workstation 10 with the following command.

/usr/lib/vmware-installer/2.1.0/vmware-installer -u vmware-workstation
