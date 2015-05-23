Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2015-01-13T15:30:57+08:00

====== SysAdmin ======
Created Tuesday 13 January 2015

== localectl ==
status |list-locales|list-keymaps|set-locale| set-x11-keymap

== timedatectl ==
status |list-timezones 
set-time 2012-10-30 18:17:16
set-ntp yes|no
set-timezone TZ

== useradd ==
defaults are from /etc/default/useradd
-D default :    
-r create sys account with uid less than 1000 and no home directory
-c comment: full name
-d home-dir
-e expire-date YYYY-MM-DD ['if shadow pass enabled']
-f dates from pass expires to account disabled ,0 immediately,-1 not disable future [same as above]
-g --gid initial login group
-G --groups supplementary groups
-m create home director
-M do not create the home directory
-N no private group
-p pass `passwd with crypt`
-s login shell defaults to /bin/bash
-u uid greater than 999

== userdel ==
-f force
-r remove home directory
-Z remove selinux mappings

== uermod ==

== SUDO ==
su and sudo 
add user to wheel group to limit its ability to su command and then edit /etc/pam.d/su

== YUM ==

yum check-update
 update
 install [y/d/N] /etc/file/name
 install-nevra name,epoch,version,release,architecture
 search
 provides
 localinstall path/to/package
 remove [as well as dependencies]
 erase [as well as configs]
 group [install| remove| summary| list| info| mark] mark package as a pack of group

You can identify an environmental group with use of the @^ prefix and a package group can be marked with @. When using yum group list, info, install, or remove, pass @group_name to specify a package group, @^group_name to specify an environmental group, or group_name to include both.
 history list [grep|1..5|all| stats| sync| package-list| info| redo id | undo id] sync rpmdb and yumdb

< Before the transaction finished, the rpmdb database was changed outside yum.
After the transaction finished, the rpmdb database was changed outside yum.

* The transaction failed to finish.
#    The transaction finished successfully, but yum returned a non-zero exit code.
E    The transaction finished successfully, but an error or a warning was displayed.
P    The transaction finished successfully, but problems already existed in the rpmdb database.
s    The transaction finished successfully, but the --skip-broken command line option was used and certain packages were skipped.
