Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-08-22T11:55:37+08:00

====== IProute2 ======
Created Friday 22 August 2014

ip [ OPTIONS ] OBJECT { COMMAND | help }

	   ip [ -force ] -batch filename

	   OBJECT := { link | addr | addrlabel | route | rule | neigh | ntable | tunnel | tuntap | maddr | mroute | mrule | monitor | xfrm | netns | l2tp | tcp_metrics }

	   OPTIONS := { -V[ersion] | -s[tatistics] | -r[esolve] | -f[amily] { inet | inet6 | ipx | dnet | link } | -o[neline] }

**ss**
-l
-t
-e extended
-m mermory
-p proccess id
-o state CLOSED '( dport = 80 and sport = 22 )'
-i process info
-s statistics
-Z proccess security context
-z also with socket security context
-b bpf filter
-0 packet socket
-x with unix socket
-D - dump to stdout
	
ip route [list| flush|add ] SELECTOR : = [ root PREFIX ] [ match PREFIX ] [ exact PREFIX ] [ table TABLE_ID ] [ proto RTPROTO ] [ type TYPE ] [ scope SCOPE ]  
				[type nat|unicast|broadcast|throw|unreacheable|blackhole|multicast|prohibit|]
				[table  main| local| default| all| NUMBER]
				[scope host| link| global| ''number'']
				[protocol kernel|boot| static| redirect| NUMBER]

ip link add|show|delete|set [type veth|vlan|gre|ipip]
	ip link add link eth0 name eth0.10 type vlan id 10   ## Creates a new vlan device eth0.10 on device eth0
	ip link add type veth addr 00:01:02:aa:bb:cc ## 	ip link set dev veth0 addr 00:01:02:aa:bb:cc
ip neigh show|flush [dev DEV]
ip tunnel [add| show| delete|change| prl] [name] [mode  ipip | gre | sit | isatap | ip6ip6 | ipip6 | ip6gre | any] [rmote ADDR] [local ADDR]

ip rule [add| delete| flush cache] from N to N dev DEV  [ iif STRING ] [ oif STRING ] [ pref(priority) NUMBER ] table [local|main| dafault]   [ nat ADDRESS ] [ prohibit | reject | unreachable ]
