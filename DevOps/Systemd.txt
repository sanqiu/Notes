Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-09-03T10:12:42+08:00

====== Systemd ======
	Created Wednesday 03 September 2014


== Concept ==
the  following for resouse control
**Service** — A process or a group of processes, which systemd started based on a unit configuration file. Services encapsulate the specified processes so that they can be started and stopped as a one set. 
**Scope** — A group of externally created processes. Scopes encapsulate processes that are started and stopped by arbitrary processes via the fork() function and then registered by systemd at runtime. For instance, user sessions, containers, and virtual machines are treated as scopes. 
**Slice** — A group of hierarchically organized units. Slices do not contain processes, they organize a hierarchy in which scopes and services are placed. The actual processes are contained in scopes or in services. In this hierarchical tree, every name of a slice unit corresponds to the path to a location in the hierarchy. The dash ("-") character acts as a separator the path components.

Services and scopes contain process and are placed in slices that do not contain processes of their own. The only exception is PID 1 that is located in the special systemd.slice. Also note that -.slice is not shown as it is implicitly identified with the root of the entire tree.

**cgroup controller also as cgroup subsystem**: includes defaults ->
**blkio** — sets limits on input/output access to and from block devices;
**cpu** — uses the CPU scheduler to provide cgroup tasks an access to the CPU. It is mounted together with the cpuacct controller on the same mount;
**cpuacct** — creates automatic reports on CPU resources used by tasks in a cgroup. It is mounted together with the cpu controller on the same mount;
**cpuset** — assigns individual CPUs (on a multicore system) and memory nodes to tasks in a cgroup;
devices — allows or denies access to devices for tasks in a cgroup;
**freezer** — suspends or resumes tasks in a cgroup;
**memory** — sets limits on memory use by tasks in a cgroup, and generates automatic reports on memory resources used by those tasks;
**net_cls** — tags network packets with a class identifier (classid) that allows the Linux traffic controller (the tc command) to identify packets originating from a particular cgroup task;
**perf_event** — enables monitoring cgroups with the perf tool;
**hugetlb** — allows to use virtual memory pages of large sizes, and to enforce resource limits on these pages.

== Command ==
	systemctl COMMAND help
	list-units ## default
	list-unit-files ## list all and check if enabled
	start, stop, restart, reenable, enable, disable, reload[config without interrupt excution], status, [un	]mask [ to prevent manually or started by other program] NAME,PID
	set-default NAME ## get-default 
	daemon-reload ## reload the systemd settings
	
	rescure ## entering rescue mode
	ermergency [if rescue mode is not available]
	show-enviroment
	set-enviroment var=val
	unset-enviroment var
	poweroff reboot halt  suspend hibernate, hybrid-sleep
	show NAME||JOB properties
	isolate NAME
			   Start the unit specified on the command line and its dependencies and stop all others.
	
	kill --kill-who=[main| control| all] ,--signal=[SIGTERM| SIGINT| SIGSTOP] NAME    ## kill a unit's proccess    ## stop ## stop that unit
	-t --type=  unit{service, device,target, socket,mount, automount,path}
	--state= {load, enabled,active, running}
	show ## systemctl show -p MemoryLimit network
		-p --property=
	-a -all 
	list-dependencies --reverce --after --before
	set-property ## systemctl set-property httpd.service CPUShares=600 MemoryLimit=500M
	-r ## recursive including the container [with container name]
	-l --full details
	--runtime  ## make this operation transient
	-n --lines ## specify the log lines when systemctl status unitname
	**systemctl -H user@host command**
	
	Journalctl
	-k  ## kernel
	-u ##unit
	-a ##full
	--list-boots
	-f ## follow
	-n ## lines
	
systemctl reboot| poweroff| hibernate| hybrid-sleep| suspend| halt

create a service:
systemd-run --unit=name --scope --slice=slice_name command : 
systemd-run --unit=toptext --scope[default service] --slice=test top -b
systemd-cgls {cat proc/[PID]/cgroup}

== LXC ==
Control Groups (Cgroups) for Resource Management, Namespaces for Process Isolation, SELinux for Security
