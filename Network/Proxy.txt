Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2015-01-12T10:01:10+08:00

====== Proxy ======
Created Monday 12 January 2015

== Reverse Proxy ==
	1.hide server
	2.adding a firewall defending internal web
	3.load ssl instead of server loading
	4.loadbalancing fo servers
	5.cache , spoon-feed
	6.single ip wih multi-server
	7.A/B testing multi-variate testing
	8.used for tracking of sem
	

== Proxy ==


== Privoxy ==
FILTER: name description
filter types:  FILTER: content fileter,  CLIENT-HEADER-FILER / CLIENT-HEADER-TAGGER / SERVER-HEADER-FILTER / SERVER-HEADER-TAGGER 
referenced in action file with **+filter{name}**
Substitution
	U : change to ungreedy, use ? to quntifiers for greedy
	T : use #$%#% without quoting
	D : use of variables such as $host, $origin, $path, $url

