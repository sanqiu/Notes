Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-12-29T15:01:36+08:00

====== Selinux ======
Created Monday 29 December 2014
**SELinux users are authorized for roles, and roles are authorized for domains**
setenfore 0 1 
getenforce
setsebool  on off

SELinux **contexts** follow the SELinux user:role:type:level syntax.

**SELinux provides a combination of Role-Based Access Control (RBAC), Type Enforcement (TE), and, optionally, Multi-Level Security (MLS)**
[if DAC deny access first the SELINUX does no effect]
DAC : discretional access control
MAC:  mandatory access control
AVC : access verctor cache (the cached decision of allowing or disallowing, otherwise to check the policy which increase kernel load)
MLS : multi level security 
MCS : Multi-Category Security 
Role-Based Access Control (RBAC) (for ps not for files)
pam: pluggable authentication modules

setuid :  enable a normal user who is able to excute this file to access permission of this file's owner's preveliges 
setgid:  enable the subdirectories to inherit the gid of this directory

list linux user and se user mappings:
semanage login -l
Roles: **SELinux users are authorized for roles, and roles are authorized for domains**
Type:  defines a domain for processes, and a type for files. [domain-to-domain,doamin-to-file]
Level: lowsensitivelevel:category0.c1023-[highsensitivelevel:category0.c1023] ## 



== chcon ==
change context:
-l level range  , -t tpe, -r role, -u user

== restorecon ==
restorecon file/to/path
-e dir, -f filename containes list of files
